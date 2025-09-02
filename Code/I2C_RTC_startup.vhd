----------------------------------------------------------------------------------
-- Company:  GLITH
-- Engineer: SEB, Rasmus
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity I2C_sensor_data_fetcher is
  generic(Clockfrequency : integer := 12*1000000); -- 12 Mhz
  Port(sysclk        : in std_logic;
       reset_n       : in std_logic;
       i_busy        : in std_logic;
       i_data_read   : in std_logic_vector(7 downto 0);
       o_i2c_ena     : out std_logic;
       o_i2c_address : out std_logic_vector(6 downto 0);
       o_i2c_rw      : out std_logic;
       o_i2c_data_wr : out std_logic_vector(7 downto 0);
       led2          : out std_logic);
end I2C_sensor_data_fetcher;

architecture rtl of I2C_sensor_data_fetcher is

	type SM_Main is (IDLE,RTC);
	signal state : SM_Main;

	signal busy_prev : std_logic;

begin

-- Process of hell
process(sysclk, reset_n)

	variable busy_cnt   : integer range 0 to 5 := 0;                  -- Count busy transisions during one transaction

begin

	if(reset_n = '0') then
	busy_cnt   := 0;
	o_i2c_ena  <= '0';
	o_TX_DV_HK    <= '0';
	o_TX_DV_BF    <= '0';
	o_TX_DV_RAD    <= '0';
	busy_prev  <= '0';
	state      <= RTC;
	led2 <= '0';

	elsif rising_edge(sysclk) then
		case state is 

			when IDLE =>		
				busy_cnt   := 0;
				o_i2c_ena  <= '0';
				o_TX_DV_HK    <= '0';
				o_TX_DV_BF    <= '0';
				o_TX_DV_RAD    <= '0';
				busy_prev  <= '0';
				state <= IDLE;

			-- Takes data from the RTC dev board
			when RTC =>
				busy_prev <= i_busy;
				if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
				busy_cnt := busy_cnt + 1;
				end if;
				-- Case for which command we are currently on according to i2c protocol
				case busy_cnt is
					when 0 =>                                    
						o_i2c_ena     <= '1';                      
						o_i2c_address <= "1101000";                
						o_i2c_rw       <= '0';                     
						o_i2c_data_wr <= "00000000";               -- Enter reset cmd here, or something like that.
					
					when 1 =>                                    
						o_i2c_ena = '0';
						state <= IDLE;
						
					when OTHERS =>
						NULL;
				end case;

			when OTHERS =>
				state <= IDLE;

		end case;       
	end if;
end process;
end rtl;