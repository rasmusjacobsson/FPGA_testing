----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- TODO: Change response for cmd8 to 5 bytes r7.

-- Reads on falling edge, writes on rising (spi-clock)
-- Only responding 0xFF right now, could be a clock issue
-- goes to next command after CMD0_allowed_tries (100) tries of CMD0 with no good response
-- resets cs after each command and response

-- Really have to look over the clks, like sclk and clk_count

-- possibly needs a cmd58 sent between cmd8 and cmd55 as well as after acmd41

-- Waveforms look good (Nuno Approved) but not working with card
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SD_init is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
        sck : out std_logic;
        mosi : out std_logic;
        miso : in std_logic;
        cs : out std_logic;
        done : out std_logic;
        test_byte : out std_logic_vector(7 downto 0);
        test_DV : out std_logic;
        test_give_response : out std_logic -- Just used for testbenches, to indicate when the sd card is supposed to give response
    );
end SD_init;

architecture rtl of SD_init is
    type state_type is (s_idle, s_start, s_cmd0, s_cmd0_clean, s_cmd0_confirmation, s_cmd0_confirmation_clean, s_cmd8, s_cmd8_clean, s_cmd8_confirmation, 
						s_cmd8_confirmation_clean, s_cmd55, s_cmd55_clean, s_cmd55_confirmation, s_cmd55_confirmation_clean, s_acmd41, s_acmd41_clean, 
						s_acmd41_confirmation, s_acmd41_confirmation_clean, s_cmd59, s_cmd59_clean, s_cmd59_confirmation, s_cmd59_confirmation_clean, s_done);
    signal state : state_type := s_start;
    
    signal sck_i    : std_logic := '0';
    signal mosi_i   : std_logic := '0';
    signal cs_i     : std_logic := '0';
    
    -- Outputs to monitor responses
    signal response_test_byte_i : std_logic_vector(7 downto 0) := (others => '0');
    signal response_test_DV_i : std_logic := '0';
    
    signal bit_cnt  : integer range 0 to 7 := 0;
    signal byte_buf : std_logic_vector(7 downto 0) := (others => '0');
	
    signal cmd_bit_cnt : integer range 0 to 47 := 0;
    signal cmd_byte_buf : std_logic_vector(47 downto 0) := (others => '0');
	
    signal start_cnt : integer range 0 to 73 := 0;
	
    constant CLKS_PER_BIT : integer := Clockfrequency/(2*Baud_Rate); -- A bit confusing since its actually clks per half spi-clock (sclk). Divisor is double the sclk freq.
    signal clk_count : integer range 0 to CLKS_PER_BIT-1 := 0;
    
    signal done_i : std_logic := '0';
	signal done_cnt : integer range 0 to 7 := 0;
    
    -- Commands used for init process
    constant CMD0 : std_logic_vector(47 downto 0) := x"400000000095"; -- GO_IDLE_STATE, resets the card
    constant CMD8 : std_logic_vector(47 downto 0) := x"48000001AA87"; -- SEND_IF_COND, interface condition (basically if the card can operate in the supplied voltage range)
    constant CMD55 : std_logic_vector(47 downto 0) := x"770000000065"; -- APP_CMD, defines that the next command is application specific
    constant ACMD41 : std_logic_vector(47 downto 0) := x"694000000077"; -- SD_SEND_OP_COND, sends host capacity support info. activates card init process
    constant CMD59 : std_logic_vector(47 downto 0) :=  x"7B0000000091"; -- CRC_ON_OFF, turns crc on or off (this case off)
    signal CMD0_tries : integer := 0;
    constant CMD0_allowed_tries : integer := 100;
    
    -- Responses that indicate that the command was received correctly
    constant response_cmd0 : std_logic_vector(7 downto 0) := x"01"; -- may or may not have a response
    constant response_cmd8 : std_logic_vector(7 downto 0) := x"01"; -- This response is actually 5 bytes but only the first matters(still have to wait for rest to finish)
    constant response_cmd55 : std_logic_vector(7 downto 0) := x"01"; 
    constant response_acmd41 : std_logic_vector(7 downto 0) := x"00"; -- Maybe 5 bytes (first byte should be x00) rest is OCR which may or may not matter 
    constant response_cmd59 : std_logic_vector(7 downto 0) := x"00";
	
begin
    sck  <= sck_i;
    mosi <= mosi_i;
    cs   <= cs_i;
    done <= done_i;
    
    test_byte <= response_test_byte_i;
    test_DV <= response_test_DV_i;
    
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
                state <= s_cmd0;
                bit_cnt <= 0;
                byte_buf <= (others => '0');
                cs_i <= '1';
                sck_i <= '0';
                mosi_i <= '0';
                cmd_bit_cnt <= 0;
                cmd_byte_buf <= CMD0;
                response_test_byte_i <= (others => '0');
                response_test_DV_i <= '0';
                clk_count <= 0;
            else
                case state is 
                
                    when s_idle =>
                        bit_cnt <= 0;
                        byte_buf <= (others => '0');
                        cs_i <= '1';
                        sck_i <= '0';
                        mosi_i <= '0';
                        cmd_bit_cnt <= 0;
                        cmd_byte_buf <= (others => '0');
                        CMD0_tries <= 0;
                        response_test_byte_i <= (others => '0');
                        response_test_DV_i <= '0';
                        test_give_response <= '0';
                        clk_count <= 0;
						
					-- waits for 74 sck cycles to let the SD card stabilize.
					when s_start =>
						if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                if start_cnt = 73 then
                                    state <= s_cmd0;
                                else 
                                    start_cnt <= start_cnt + 1;
                                end if;
                            end if;
                        else
                            clk_count <= clk_count + 1;    
                        end if;
					
                    when s_cmd0 => 
                        cs_i <= '0';
                        response_test_DV_i <= '0';
                        mosi_i <= cmd_byte_buf(47);
                        
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';                                
                                if cmd_bit_cnt = 47 then
                                    state <= s_cmd0_clean;
                                else 
                                    cmd_bit_cnt <= cmd_bit_cnt + 1;
                                end if;
                            end if;
                        else
                            clk_count <= clk_count + 1;    
                        end if;
					
					-- cleans by resetting cs, counts and test response signals.
					when s_cmd0_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0;
						response_test_byte_i <= (others => '0');
						test_give_response <= '1';
						
						state <= s_cmd0_confirmation;
                        
                    when s_cmd0_confirmation =>
                        cs_i <= '0';
                        test_give_response <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= not miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0; 
                            if sck_i = '0' then
                                sck_i <= '1';
                            else 
                                sck_i <= '0';
                                if bit_cnt = 0 then 
									state <= s_cmd0_confirmation_clean;
                                else                   
									bit_cnt <= bit_cnt - 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
					when s_cmd0_confirmation_clean =>
						cs_i <= '1';						
						bit_cnt <= 7;
						cmd_bit_cnt <= 0; 
						if byte_buf = response_cmd0 or CMD0_tries = CMD0_allowed_tries then
							cmd_byte_buf <= CMD8;
							state <= s_cmd8;                                                                       
						else 
							CMD0_tries <= CMD0_tries + 1;
							cmd_byte_buf <= CMD0;
							state <= s_cmd0;
						end if;									
						response_test_byte_i <= byte_buf;
						response_test_DV_i <= '1';										
						
                    when s_cmd8 => 
                        cs_i <= '0';
                        response_test_DV_i <= '0';
                        mosi_i <= cmd_byte_buf(47);
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0;
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                if cmd_bit_cnt = 47 then
                                    state <= s_cmd8_clean;
                                else 
                                    cmd_bit_cnt <= cmd_bit_cnt + 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
						
					when s_cmd8_clean => 
                        cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0;
						response_test_byte_i <= (others => '0');
						test_give_response <= '1';
						
						state <= s_cmd8_confirmation;
						
                    when s_cmd8_confirmation =>
                        cs_i <= '0';
                        test_give_response <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= not miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '0' then
                                sck_i <= '1';
                            else 
                                sck_i <= '1';
                                if bit_cnt = 0 then 
                                    state <= s_cmd8_confirmation_clean;
                                else 
									bit_cnt <= bit_cnt - 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
					when s_cmd8_confirmation_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0; 
						if byte_buf = response_cmd8 then
							cmd_byte_buf <= CMD55;
							state <= s_cmd55;
						else 
							cmd_byte_buf <= CMD8;
							state <= s_cmd8;
						end if;
						response_test_byte_i <= byte_buf;
						response_test_DV_i <= '1';
						
                    when s_cmd55 =>                  
                        cs_i <= '0';            
                        response_test_DV_i <= '0';                 
                        mosi_i <= cmd_byte_buf(47);
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                if cmd_bit_cnt = 47 then
									state <= s_cmd55_clean;
                                else 
                                    cmd_bit_cnt <= cmd_bit_cnt + 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
						
					when s_cmd55_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0;
						response_test_byte_i <= (others => '0');
						test_give_response <= '1';
						
						state <= s_cmd55_confirmation;
						
                    when s_cmd55_confirmation => 
                        cs_i <= '0';
                        test_give_response <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= not miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0;
                            if sck_i = '0' then
                                sck_i <= '1';
                            else 
                                sck_i <= '0';
                                if bit_cnt = 0 then 
                                    state <= s_cmd55_confirmation_clean;
                                else 
									bit_cnt <= bit_cnt - 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
					when s_cmd55_confirmation_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0; 
						if byte_buf = response_cmd55 then
							cmd_byte_buf <= ACMD41;
							state <= s_acmd41;
						else 
							cmd_byte_buf <= CMD55;
							state <= s_cmd55;
						end if;
						response_test_byte_i <= byte_buf;
						response_test_DV_i <= '1';
						
                    when s_acmd41 =>
                        cs_i <= '0';
                        response_test_DV_i <= '0';
                        mosi_i <= cmd_byte_buf(47);
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0;
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                if cmd_bit_cnt = 47 then
									state <= s_acmd41_clean;
                                else 
                                    cmd_bit_cnt <= cmd_bit_cnt + 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
						
					when s_acmd41_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0;
						response_test_byte_i <= (others => '0');
						test_give_response <= '1';
						
						state <= s_acmd41_confirmation;
                            
                    when s_acmd41_confirmation => 
                        cs_i <= '0';
                        test_give_response <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= not miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0;
                            if sck_i = '0' then
                                sck_i <= '1';
                            else 
                                sck_i <= '0';
                                if bit_cnt = 0 then 
                                    state <= s_acmd41_confirmation_clean;
                                else 
									bit_cnt <= bit_cnt - 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                        
					when s_acmd41_confirmation_clean => 
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0; 
						if byte_buf = response_acmd41 then
							cmd_byte_buf <= CMD59;
							state <= s_cmd59;
						else 
							cmd_byte_buf <= CMD55;
							state <= s_cmd55;
						end if;
						response_test_byte_i <= byte_buf;
						response_test_DV_i <= '1';
						
                    when s_cmd59 =>
                        cs_i <= '0';            
                        response_test_DV_i <= '0';                 
                        mosi_i <= cmd_byte_buf(47);
                        if clk_count = (CLKS_PER_BIT-1)/2 then
                            clk_count <= 0; 
                            if sck_i = '1' then
                                sck_i <= '0';
                            else
                                sck_i <= '1';
                                cmd_byte_buf <= cmd_byte_buf(46 downto 0) & '0';
                                if cmd_bit_cnt = 47 then
									state <= s_cmd59_clean;
                                else 
                                    cmd_bit_cnt <= cmd_bit_cnt + 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
						
					when s_cmd59_clean =>
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0;
						response_test_byte_i <= (others => '0');
						test_give_response <= '1';
						
						state <= s_cmd59_confirmation;
                                              
                    when s_cmd59_confirmation => 
                        cs_i <= '0';
                        test_give_response <= '0';
                        mosi_i <= '0';
                        -- check return
                        byte_buf(bit_cnt) <= miso;
                        if clk_count = (CLKS_PER_BIT-1)/2 then 
                            clk_count <= 0;
                            if sck_i = '0' then
                                sck_i <= '1';
                            else 
                                sck_i <= '0';
                                if bit_cnt = 0 then 
                                    state <= s_cmd59_confirmation_clean;
                                else 
									bit_cnt <= bit_cnt - 1;
                                end if;
                            end if;
                        else 
                            clk_count <= clk_count + 1;                        
                        end if;
                         
					when s_cmd59_confirmation_clean;
						cs_i <= '1';
						bit_cnt <= 7;
						cmd_bit_cnt <= 0; 
						if byte_buf = response_cmd59 then
							cmd_byte_buf <= (others => '0');
							state <= s_done;
						else 
							cmd_byte_buf <= CMD55;
							state <= s_cmd55;
						end if;
						response_test_byte_i <= byte_buf;
						response_test_DV_i <= '1';
                        
					-- Lets the sck run for 8 cycles before sending done signal and shutting down.
                    when s_done =>
						if clk_count = (CLKS_PER_BIT-1)/2 then
							if sck_i = '0' then
								sck_i <= '1';
							else 
								sck_i <= '0';
								if done_cnt = 7;									
									done_i <= '1';
									bit_cnt <= 0;
									byte_buf <= (others => '0');
									cs_i <= '1';
									sck_i <= '0';
									mosi_i <= '0';
									cmd_bit_cnt <= 0;
									cmd_byte_buf <= (others => '0');
									done_cnt <= 7;
									response_test_byte_i <= (others => '0');
									response_test_DV_i <= '0';                
									
									state <= s_idle; 
								else 
									done_cnt <= done_cnt + 1;								
							end if;
						else
							clk_count <= clk_count + 1;
						end if;
						                          
                end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;
