--------------------------------------
--- Logic:   FLASH_WR MODULE ---------
--- Author:  Matej Nespor ------------
--- Date:    01-06-2025 --------------
--------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FLASH_WR is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic;  -- trigger write
        sck     : out std_logic;
        mosi    : out std_logic;
        miso    : in  std_logic;
        cs      : out std_logic;
		done_flag : out std_logic
    );
end entity;

architecture rtl of FLASH_WR is
    type state_type is (idle, wren, pp_cmd, addr1, addr2, addr3, send_data, send_done, done); -- pp_cmd is Page Program cmd
    signal state : state_type := idle;

    signal sck_i    : std_logic := '0';
    signal mosi_i   : std_logic := '0';
    signal cs_i     : std_logic := '1';

    signal bit_cnt  : integer range 0 to 7 := 0;
    signal byte_buf : std_logic_vector(7 downto 0) := (others => '0');
	
	signal done_flag_i : std_logic := '0';

    -- fixed values
    constant ADDR_BYTE1  : std_logic_vector(7 downto 0) := x"00";
    constant ADDR_BYTE2  : std_logic_vector(7 downto 0) := x"01";
    constant ADDR_BYTE3  : std_logic_vector(7 downto 0) := x"00";
    -- add more pointers if needed
    constant DATA        : std_logic_vector(7 downto 0) := x"A5";  -- test val here
begin
    sck  <= sck_i;
    mosi <= mosi_i;
    cs   <= cs_i;
	
	done_flag <= done_flag_i;

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= idle;
                bit_cnt <= 0;
                cs_i <= '1';
                sck_i <= '0';
                mosi_i <= '0';
                byte_buf <= (others => '0');
            else
                case state is

                    when idle =>
                        if start = '1' then
                            cs_i <= '0';
                            byte_buf <= x"06"; -- WREN
                            state <= wren;
                        end if;

                    when wren =>
                        mosi_i <= byte_buf(7);
                        if sck_i = '0' then
                            sck_i <= '1';  -- rising edge
                        else
                            sck_i <= '0';  -- falling edge
                            byte_buf <= byte_buf(6 downto 0) & '0';
                            bit_cnt <= bit_cnt + 1;
                            if bit_cnt = 7 then
                                bit_cnt <= 0;
                                cs_i <= '1';  -- end WREN
                                state <= pp_cmd;
                            end if;
                        end if;

                    when pp_cmd =>
                        cs_i <= '0';
                        byte_buf <= x"02"; -- Page Program cmd
                        state <= addr1;

                    when addr1 | addr2 | addr3 | send_data | send_done =>
                        mosi_i <= byte_buf(7);
                        if sck_i = '0' then
                            sck_i <= '1';
                        else
                            sck_i <= '0';
                            byte_buf <= byte_buf(6 downto 0) & '0';
                            bit_cnt <= bit_cnt + 1;
                            if bit_cnt = 7 then
                                bit_cnt <= 0;
                                case state is
                                    when addr1 => 
                                        byte_buf <= ADDR_BYTE1; 
                                        state <= addr2;
                                    when addr2 => 
                                        byte_buf <= ADDR_BYTE2; 
                                        state <= addr3;
                                    when addr3 => 
                                        byte_buf <= ADDR_BYTE3; 
                                        state <= send_data;
                                    when send_data =>
										byte_buf <= DATA;
										state <= send_done;
									when send_done => 
										cs_i <= '1'; 										
										state <= done;
                                    when others => null;
                                end case;
                            end if;
                        end if;

                    when done =>
                        done_flag_i <= '1';
						if start = '0' then
							done_flag_i <= '0';
							bit_cnt <= 0;
							sck_i <= '0';
							mosi_i <= '0';
							byte_buf <= (others => '0');
						    state <= idle;
						end if;
						
                    when others =>
                        state <= idle;

                end case;
            end if;
        end if;
    end process;
end architecture;

