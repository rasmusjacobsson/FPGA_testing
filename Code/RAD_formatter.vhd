----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes the radiation data, radiation drive, RTC data and RTC drive.
-- Sends out an RTC request signal to get an RTC module to gather data from the RTC and send it over.
-- Returns the RAD packet with the data in the right order and ID at the start, padded to byte size.
-- Also returns a RAD packet drive to signal packet ready.
-- The ID needs to be updated to the correct one.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAD_formatter is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		RAD_packet_got : in std_logic;
		RAD_data_DV : in std_logic;
		RAD_data : in std_logic_vector(7 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(16 downto 0);
		RTC_request : out std_logic;
		I2C_read_done : out std_logic;
		RAD_packet_DV : out std_logic;
		RAD_packet : out std_logic_vector(10007 downto 0)
    );
end RAD_formatter;

architecture rtl of RAD_formatter is
    type state_type is (s_RAD_idle, s_RAD_end_check, s_RTC_idle, s_RTC_end_check, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_RAD_idle;
	
	signal RAD_bit_cnt : integer range 0 to 9981 := 9981; -- index for the radiation data (signal below)
	signal RAD_data_i : std_logic_vector(9981 downto 0) := (others => '0');
	
	signal RTC_bit_cnt : integer range 0 to 16 := 16; -- index for the RTC data
	signal RTC_data_i : std_logic_vector(16 downto 0) := (others => '0');
	
	constant ID : std_logic_vector(1 downto 0) := b"10";
	constant padding : std_logic_vector(6 downto 0) := b"0000000";
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				RAD_bit_cnt <= 9981;
				RAD_data_i <= (others => '0');
				RTC_bit_cnt <= 16;
				RTC_data <= (others => '0');
				RTC_request <= '0';
				I2C_read_done <= '0';
				RAD_packet_DV <= '0';
				RAD_packet <= (others => '0');
				state <= s_RAD_idle;
            else
				case state is
					when s_RAD_idle =>
						
						if RAD_data_DV = '1' then
							if (RAD_bit_cnt-7) >= 0 then
								RAD_data_i(RAD_bit_cnt downto (RAD_bit_cnt-7)) <= RAD_data;
								state <= s_RAD_end_check;
							else 
								RAD_data_i(RAD_bit_cnt downto 0) <= RAD_data(7 downto (7-RAD_bit_cnt));
								state <= s_RAD_end_check;								
							end if;
						else 				
							RAD_packet_DV <= '0';
							state <= s_RAD_idle;
						end if;	
						
					when s_RAD_end_check =>						
						
						if (RAD_bit_cnt-7) >= 0 then
							RAD_bit_cnt <= RAD_bit_cnt-8;
							state <= s_RAD_idle;
						else
							RTC_request <= '1';
							state <= s_RTC_idle;
						end if;
						
					when s_RTC_idle =>
					
						I2C_read_done <= '0';
						if RTC_data_DV = '1' then
							RTC_request <= '0'; -- Thought here is to keep the request high until it gets a response, allows for "queueing" in the module which this is sent to (I2C_sensor_data_fetcher)
							if (RTC_bit_cnt-7) >= 0 then
								RTC_data_i(RTC_bit_cnt downto (RTC_bit_cnt-7)) <= RTC_data;
								state <= s_RTC_end_check;
							else 
								RTC_data_i((RTC_bit_cnt) downto 0) <= RTC_data(7 downto (7-RTC_bit_cnt));
								state <= s_RTC_end_check;
							end if;
						else 				
							RAD_packet_DV <= '0';
							state <= s_RTC_idle;
						end if;	
						
					when s_RTC_end_check =>
						
						if (RTC_bit_cnt-7) >= 0 then
							RTC_bit_cnt <= RTC_bit_cnt-8;
							I2C_read_done <= '1';
							state <= s_RTC_idle;
						else
							RAD_packet <= ID & RTC_data_i & RAD_data_i & padding;
							RAD_packet_DV <= '1';
							I2C_read_done <= '1';
							state <= s_cleanup;
						end if;
						
					when s_cleanup =>				
						if RAD_packet_got = '1' then
							RAD_bit_cnt <= 9981;
							RAD_data_i <= (others => '0');
							RTC_bit_cnt <= 16;
							RTC_data_i <= (others => '0');
							RTC_request <= '0';
							I2C_read_done <= '0';
							RAD_packet_DV <= '0';
							RAD_packet <= (others => '0');
							
							state <= s_RAD_idle;	
						else 
							state <= s_idle;
						end if;
					
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;