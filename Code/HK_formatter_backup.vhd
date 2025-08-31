----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes GNSS data and drive and requests RTC, ALT and TEMP when they are needed. 
-- Puts everything together into a packet with ID and padding.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HK_formatter_backup is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		HK_packet_got : in std_logic;
		GNSS_data_DV : in std_logic;
		GNSS_data : in std_logic_vector(7 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(7 downto 0);
		RTC_request : out std_logic;
		ALT_data_DV : in std_logic;
		ALT_data : in std_logic_vector(7 downto 0);
		ALT_request : out std_logic;
		TEMP_data_DV : in std_logic;
		TEMP_data : in std_logic_vector(7 downto 0);
		TEMP_request : out std_logic;
		I2C_read_done : out std_logic;
		HK_packet_DV : out std_logic;
		HK_packet : out std_logic_vector(199 downto 0)
    );
end HK_formatter_backup;

architecture rtl of HK_formatter_backup is
    type state_type is (s_GNSS_idle, s_GNSS_end_check, s_RTC_idle, s_RTC_end_check, s_ALT_idle, s_ALT_end_check, s_TEMP_idle, s_TEMP_end_check, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_GNSS_idle;
	
	signal GNSS_bit_cnt : integer range 0 to 54 := 54; -- index for the GNSS data (signal below)
	signal GNSS_data_i : std_logic_vector(54 downto 0) := (others => '0');
	
	signal RTC_bit_cnt : integer range 0 to 16 := 16; -- index for the RTC data (signal below)
	signal RTC_data_i : std_logic_vector(16 downto 0) := (others => '0');
	
	signal ALT_bit_cnt : integer range 0 to 23 := 23; -- index for the ALT data (signal below)
	signal ALT_data_i : std_logic_vector(23 downto 0) := (others => '0');

	signal TEMP_bit_cnt : integer range 0 to 95 := 95; -- index for the TEMP data (signal below)
	signal TEMP_data_i : std_logic_vector(95 downto 0) := (others => '0');
	
	constant ID : std_logic_vector(1 downto 0) := b"00";
	constant padding : std_logic_vector(5 downto 0) := b"000000";
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				GNSS_bit_cnt <= 54;
				GNSS_data_i <= (others => '0');	
				RTC_bit_cnt <= 16;
				RTC_data_i <= (others => '0');	
				RTC_request <= '0';
				ALT_bit_cnt <= 23;
				ALT_data_i <= (others => '0');	
				ALT_request <= '0';
				TEMP_bit_cnt <= 95;
				TEMP_data_i <= (others => '0');		
				TEMP_request <= '0';
				I2C_read_done <= '0';
				HK_packet_DV <= '0';
				HK_packet <= (others => '0');
				state <= s_GNSS_idle;				
            else
				case state is
					when s_GNSS_idle =>
					
						if GNSS_data_DV = '1' then
							if (GNSS_bit_cnt-7) >= 0 then
								GNSS_data_i(GNSS_bit_cnt downto (GNSS_bit_cnt-7)) <= GNSS_data;
								state <= s_GNSS_end_check;
							else 
								GNSS_data_i(GNSS_bit_cnt downto 0) <= GNSS_data(7 downto (7-GNSS_bit_cnt));
								state <= s_GNSS_end_check;								
							end if;
						else 				
							HK_packet_DV <= '0';
							state <= s_GNSS_idle;
						end if;	
						
					when s_GNSS_end_check =>	

						if (GNSS_bit_cnt-7) >= 0 then
							GNSS_bit_cnt <= GNSS_bit_cnt-8;
							state <= s_GNSS_idle;
						else
							RTC_request <= '1';
							state <= s_RTC_idle;
						end if;
												
					when s_RTC_idle =>
													
						I2C_read_done <= '0'; -- Set to '1' once the byte has been received.
						if RTC_data_DV = '1' then
							RTC_request <= '0'; -- Thought here is to keep the request high until it gets a response, allows for "queueing" in the module which this is sent to (I2C_sensor_data_fetcher)
							if (RTC_bit_cnt-7) >= 0 then
								RTC_data_i(RTC_bit_cnt downto (RTC_bit_cnt-7)) <= RTC_data;
								state <= s_RTC_end_check;
							else 
								RTC_data_i(RTC_bit_cnt downto 0) <= RTC_data(7 downto (7-RTC_bit_cnt));
								state <= s_RTC_end_check;								
							end if;
						else 				
							HK_packet_DV <= '0';
							state <= s_RTC_idle;
						end if;	
						
					when s_RTC_end_check =>	

						if (RTC_bit_cnt-7) >= 0 then
							RTC_bit_cnt <= RTC_bit_cnt-8;							
							I2C_read_done <= '1';
							state <= s_RTC_idle;
						else
							ALT_request <= '1';							
							I2C_read_done <= '1';
							state <= s_RTC_idle;
						end if;
						
					when s_ALT_idle =>					
													
						I2C_read_done <= '0';
						if ALT_data_DV = '1' then
							ALT_request <= '0'; -- Thought here is to keep the request high until it gets a response, allows for "queueing" in the module which this is sent to (I2C_sensor_data_fetcher)						
							if (ALT_bit_cnt-7) >= 0 then
								ALT_data_i(ALT_bit_cnt downto (ALT_bit_cnt-7)) <= ALT_data;
								state <= s_ALT_end_check;
							else 
								ALT_data_i(ALT_bit_cnt downto 0) <= ALT_data(7 downto (7-ALT_bit_cnt));
								state <= s_ALT_end_check;								
							end if;
						else 				
							HK_packet_DV <= '0';
							state <= s_ALT_idle;
						end if;	
						
					when s_ALT_end_check =>	

						if (ALT_bit_cnt-7) >= 0 then
							ALT_bit_cnt <= ALT_bit_cnt-8;							
							I2C_read_done <= '0';
							state <= s_ALT_idle;
						else
							TEMP_request <= '1';							
							I2C_read_done <= '0';
							state <= s_ALT_idle;
						end if;
						
					when s_TEMP_idle =>
													
						I2C_read_done <= '0';
						if TEMP_data_DV = '1' then
							TEMP_request <= '0'; -- Thought here is to keep the request high until it gets a response, allows for "queueing" in the module which this is sent to (I2C_sensor_data_fetcher)
							if (TEMP_bit_cnt-7) >= 0 then
								TEMP_data_i(TEMP_bit_cnt downto (TEMP_bit_cnt-7)) <= TEMP_data;
								state <= s_TEMP_end_check;
							else 
								TEMP_data_i(TEMP_bit_cnt downto 0) <= TEMP_data(7 downto (7-TEMP_bit_cnt));
								state <= s_TEMP_end_check;								
							end if;
						else 				
							HK_packet_DV <= '0';
							state <= s_TEMP_idle;
						end if;	
						
					when s_TEMP_end_check =>	

						if (TEMP_bit_cnt-7) >= 0 then
							TEMP_bit_cnt <= TEMP_bit_cnt-8;							
							I2C_read_done <= '0';
							state <= s_TEMP_idle;
						else
							HK_packet <= ID & RTC_data_i & GNSS_data_i & TEMP_data_i & ALT_data_i & padding;
							HK_packet_DV <= '1';							
							I2C_read_done <= '0';
							state <= s_cleanup;
						end if;								
						
					when s_cleanup =>									
						if HK_packet_got = '1' then
							GNSS_bit_cnt <= 54;
							GNSS_data_i <= (others => '0');	
							RTC_bit_cnt <= 16;
							RTC_data_i <= (others => '0');	
							RTC_request <= '0';
							ALT_bit_cnt <= 23;
							ALT_data_i <= (others => '0');	
							ALT_request <= '0';
							TEMP_bit_cnt <= 95;
							TEMP_data_i <= (others => '0');		
							TEMP_request <= '0';
							I2C_read_done <= '0';
							HK_packet_DV <= '0';
							HK_packet <= (others => '0');
							state <= s_GNSS_idle;					
						else 
							state <= s_cleanup;
						end if;
					
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;