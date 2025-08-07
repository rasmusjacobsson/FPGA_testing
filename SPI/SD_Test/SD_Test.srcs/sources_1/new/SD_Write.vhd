----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SD_Write is
    generic (Clockfrequency : integer := 12*1000000;
             Baud_Rate : integer := 400000);
    Port ( 
        clk     : in  std_logic;
        omega_rst: in std_logic; -- reset everything, (address as well)
        rst     : in  std_logic; -- resets last or ongoing write
        start   : in  std_logic; -- trigger write
        data    : in  std_logic_vector(7 downto 0);
        sck     : out std_logic;
        mosi    : out std_logic;
        miso    : in  std_logic;
        cs      : out std_logic;
		done : out std_logic
      );
end SD_Write;

architecture rtl of SD_Write is
    type state_type is (s_idle, s_cmd16, s_cmd16_confirmation, s_cmd24, s_cmd24_confirmation, s_data_write, s_done);
    signal state : state_type := s_idle;

    signal sck_i    : std_logic := '0';
    signal mosi_i   : std_logic := '0';
    signal cs_i     : std_logic := '0';
    signal done_i   : std_logic := '0';
    
    signal bit_cnt  : integer range 0 to 7 := 0;
    signal byte_buf : std_logic_vector(7 downto 0) := (others => '0');
	
    signal cmd_bit_cnt : integer range 0 to 47 := 0;
    signal cmd_byte_buf : std_logic_vector(47 downto 0) := (others => '0');
    
    signal data_bit_cnt : integer range 0 to 7 := 0;
    signal data_byte : std_logic_vector(7 downto 0) := (others => '0');
    
    constant CLKS_PER_BIT : integer := Clockfrequency/(2*Baud_Rate);
    signal clk_count : integer range 0 to CLKS_PER_BIT-1 := 0;
    
    constant CMD16 : std_logic_vector(47 downto 0) := x"500000000139"; -- SET_BLOCKLEN, CRC might not matter (last byte), arg (mid 4 bytes) might have to be even, cmd does not work for sdhc and sdxc cards
    constant CMD24_raw : std_logic_vector(7 downto 0) := x"58"; -- WRITE_BLOCK, writes a block the size determined by cmd16
    
    signal address : std_logic_vector(31 downto 0) := x"00100000"; -- 4 byte address to be written to
    
    constant response_cmd16 : std_logic_vector(7 downto 0) := x"01"; -- Dont know if these are correct, but think so (if it even gives a response)
    constant response_cmd24 : std_logic_vector(7 downto 0) := x"01";
begin
    sck  <= sck_i;
    mosi <= mosi_i;
    cs   <= cs_i;
    done <= done_i;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if omega_rst = '1' then -- resets to complete start
                state <= s_idle;
                bit_cnt <= 0;
                byte_buf <= (others => '0');
                cs_i <= '1';
                sck_i <= '0';
                mosi_i <= '0';
                cmd_bit_cnt <= 0;
                cmd_byte_buf <= (others => '0');
                address <= x"00100000";
                clk_count <= 0;
                data_bit_cnt <= 0;
                data_byte <= (others => '0');
            elsif rst = '1' then -- reset currect or last write
                state <= s_idle;
                bit_cnt <= 0;
                byte_buf <= (others => '0');
                cs_i <= '1';
                sck_i <= '0';
                mosi_i <= '0';
                cmd_bit_cnt <= 0;
                cmd_byte_buf <= (others => '0');
                clk_count <= 0;
                data_bit_cnt <= 0;
                data_byte <= (others => '0');
            else
                
                case state is
                    when s_idle =>
                        sck_i <= '0';
                        mosi_i <= '0';
                        cmd_bit_cnt <= 0;
                        if start = '1' then
                            cs_i <= '1';
                            clk_count <= 0;
                            data_byte <= data;
                            cmd_byte_buf <= CMD16;
                            state <= s_cmd16;
                        else
                            state <= state;
                        end if;
                    when s_cmd16 =>
                        cs_i <= '0';
                        mosi_i <= cmd_byte_buf(47);
                        
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '0' then
                                sck_i <= '1';
                            else
                                sck_i <= '0';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                cmd_bit_cnt <= cmd_bit_cnt + 1;
                                if cmd_bit_cnt = 47 then
                                    cs_i <= '1'; -- set cs to high after command (will be set back low before response)
                                    bit_cnt <= 7; -- set to 7 to read next byte from miso
                                    cmd_bit_cnt <= 0; -- cmd bit set to 0 to ensure it is set
                                    state <= s_cmd16_confirmation;
                                else 
                                    state <= state;
                                end if;
                            end if;
                        else
                            clk_count <= clk_count + 1;    
                        end if;
                        
                    when s_cmd16_confirmation =>
                        cs_i <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else 
                                sck_i <= '1';
                                bit_cnt <= bit_cnt - 1;
                                if bit_cnt = 0 then 
                                    bit_cnt <= 7;
                                    cmd_bit_cnt <= 0; 
                                    if byte_buf = response_cmd16 then
                                        cs_i <= '1';
                                        cmd_byte_buf <= CMD24_raw & address & x"00";
                                        state <= s_cmd24;                                                                       
                                    else 
                                        cmd_byte_buf <= CMD16;
                                        state <= s_cmd16;
                                    end if;
                                else                                     
                                    state <= state;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
                    when s_cmd24 =>
                        cs_i <= '0';
                        mosi_i <= cmd_byte_buf(47);
                        
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '0' then
                                sck_i <= '1';
                            else
                                sck_i <= '0';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                cmd_bit_cnt <= cmd_bit_cnt + 1;
                                if cmd_bit_cnt = 47 then
                                    cs_i <= '1'; -- set cs to high after command (will be set back low before response)
                                    bit_cnt <= 7; -- set to 7 to read next byte from miso
                                    cmd_bit_cnt <= 0; -- cmd bit set to 0 to ensure it is set
                                    state <= s_cmd24_confirmation;
                                else 
                                    state <= state;
                                end if;
                            end if;
                        else
                            clk_count <= clk_count + 1;    
                        end if;
                        
                    when s_cmd24_confirmation =>
                        cs_i <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else 
                                sck_i <= '1';
                                bit_cnt <= bit_cnt - 1;
                                if bit_cnt = 0 then 
                                    bit_cnt <= 7;
                                    cmd_bit_cnt <= 0; 
                                    if byte_buf = response_cmd16 then
                                        cs_i <= '1';
                                        cmd_byte_buf <= (others => '0');
                                        data_bit_cnt <= 0;
                                        state <= s_data_write;                                                                       
                                    else 
                                        cmd_byte_buf <= CMD24_raw & address & x"00";
                                        state <= s_cmd24;
                                    end if;
                                else                                     
                                    state <= state;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
                    when s_data_write =>
                        cs_i <= '0';
                        mosi_i <= data_byte(7);
                        
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '0' then
                                sck_i <= '1';
                            else
                                sck_i <= '0';
                                data_byte <= data(6 downto 0) & '0'; -- shift data to the left 1 bit (might be stupid since the data is gone after write
                                data_bit_cnt <= data_bit_cnt + 1;
                                if data_bit_cnt = 7 then
                                    cs_i <= '1'; -- set cs to high after command (will be set back low before response)
                                    data_bit_cnt <= 0; -- set to 7 to read next byte from miso
                                    cmd_bit_cnt <= 0; -- cmd bit set to 0 to ensure it is set
                                    state <= s_done;
                                else 
                                    state <= state;
                                end if;
                            end if;
                        else
                            clk_count <= clk_count + 1;    
                        end if;
                        
                    when s_done =>
                        done_i <= '1';
                        bit_cnt <= 0;
                        byte_buf <= (others => '0');
                        cs_i <= '1';
                        sck_i <= '0';
                        mosi_i <= '0';
                        data_bit_cnt <= 0;
                        data_byte <= (others => '0');
                        cmd_bit_cnt <= 0;
                        cmd_byte_buf <= (others => '0');
                        state <= s_idle; 
                        address <= std_logic_vector(unsigned(address) + 4); -- adds 4 to the address to read next byte, no idea if this is how you do it
                end case;
                
            end if;
        else 
            state <= state;
        end if;
    end process;    
end rtl;
