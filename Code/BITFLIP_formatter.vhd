----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- TODO: lägg till en extra input som tar in en "done" signal från modulen man skickar packetet till
-- Ig någon liten skitgrej innan UART som tar in alla packet och delar upp de för att skickas på UART.
-- Också lägga till typ samma sak för RTCn så att inte paketen frågar om RTC samtidigt och på så sätt inte får något.

-- Takes the SRAM data and an SRAM drive, along with RTC stuff and formats it for sending
-- OBS: Right now the SRAM data is done bytewise (can be changed easily if the bit-flip algorithm gives the entire thing at once)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BITFLIP_formatter is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		SRAM_data_DV : in std_logic;
		SRAM_data : in std_logic_vector(7 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(16 downto 0);
		RTC_request : out std_logic;
		I2C_read_done : out std_logic;
		BITFLIP_packet_DV : out std_logic;
		BITFLIP_packet : out std_logic_vector(191 downto 0)
    );
end BITFLIP_formatter;

architecture rtl of BITFLIP_formatter is
    type state_type is (s_SRAM_idle, s_SRAM_end_check, s_RTC_idle, s_RTC_end_check, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_SRAM_idle;
	
	signal SRAM_bit_cnt : integer range 0 to 171 := 171; -- index for the radiation data (signal below)
	signal SRAM_data_i : std_logic_vector(171 downto 0) : (others => '0');
	
	signal RTC_bit_cnt : integer range 0 to 16 := 16; -- index for the RTC data
	signal RTC_data_i : std_logic_vector(16 downto 0) := (others => '0');
	
	constant ID : std_logic_vector(1 downto 0) := b"01";
	constant padding : std_logic_vector(0 downto 0) := b"0";
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				SRAM_bit_cnt <= 171;
				SRAM_data_i <= (others => '0');	
				RTC_bit_cnt <= 16;
				RTC_data_i <= (others => '0');
				RTC_request <= '0';
				I2C_read_done <= '0';
				BITFLIP_packet_DV <= '0';
				BITFLIP_packet <= (others => '0');
				state <= s_idle;
            else
				case state is
					when s_SRAM_idle =>
					
						if SRAM_data_DV = '1' then
							if (SRAM_bit_cnt-7) >= 0 then
								SRAM_data_i(SRAM_bit_cnt downto (SRAM_bit_cnt-7)) <= SRAM_data;
								state <= s_SRAM_end_check;
							else 
								SRAM_data_i(SRAM_bit_cnt downto 0) <= SRAM_data(7 downto (7-SRAM_bit_cnt));
								state <= s_SRAM_end_check;								
							end if;
						else 				
							BITFLIP_packet_DV <= '0';
							state <= s_SRAM_idle;
						end if;	
						
					when s_SRAM_end_check =>						
					
						if (SRAM_bit_cnt-7) >= 0 then
							SRAM_bit_cnt <= SRAM_bit_cnt-8;
							state <= s_SRAM_idle;
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
							BITFLIP_packet_DV <= '0';
							state <= s_RTC_idle;
						end if;	
						
					when s_RTC_end_check =>
						
						if (RTC_bit_cnt-7) >= 0 then
							RTC_bit_cnt <= RTC_bit_cnt-8;
							I2C_read_done <= '1';
							state <= s_RTC_idle;
						else
							BITFLIP_packet <= ID & RTC_data_i & SRAM_data_i & padding;
							BITFLIP_packet_DV <= '1';
							I2C_read_done <= '1';
							state <= s_cleanup;
						end if;
						
					when s_cleanup =>				
						
						SRAM_bit_cnt <= 171;
						SRAM_data_i <= (others => '0');
						RTC_bit_cnt <= 16;
						RTC_data_i <= (others => '0');
						RTC_request <= '0';
						I2C_read_done <= '0';
						BITFLIP_packet_DV <= '0';
						BITFLIP_packet <= (others => '0');
						
						state <= s_SRAM_idle;					
					
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;