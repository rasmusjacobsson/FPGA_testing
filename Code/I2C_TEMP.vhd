----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Module for testing the TEMP (seeing how many bits is sent)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2C_TEMP is
	generic(Clockfrequency : integer := 12*1000000); -- 12 Mhz
    Port (clk 			: in std_logic;
          rst 			: in std_logic;
		  
		  i_busy        : in std_logic;
		  i_data_read   : in std_logic_vector(7 downto	0);
		  
		  TX_done 		: in std_logic;
          o_i2c_ena     : out std_logic;
		  o_i2c_address : out std_logic_vector(6 downto 0);
		  o_i2c_rw      : out std_logic;
		  o_i2c_data_wr : out std_logic_vector(7 downto 0);
          TEMP_DV 		: out std_logic;
          TEMP_data 	: out std_logic_vector(7 downto 0)
     );
end I2C_TEMP;

architecture rtl of I2C_TEMP is
    type state_type is (s_idle, s_TEMP, s_TEMP_send, s_cleanup);
    signal state : state_type := s_idle;
    
    signal busy_prev : std_logic;
    signal TEMP_data_i : std_logic_vector(63 downto 0); -- 8 bytes just for safety (if it turns out the TEMP sends more, just add more)
       
    
begin
    process(clk)
		variable busy_cnt   : integer range 0 to 9 := 0;                  -- Count busy transisions during one transaction		
		variable mess_cnt   : integer range 0 to 2 := 0;                  -- Counting messages sent to TX module 
		variable timeout 	: integer range 0 to Clockfrequency/1000;	  -- Variable used to stop listening for responses after set time (1 ms)
	    variable reading_in_progress : boolean := false;
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				busy_cnt := 0;
				mess_cnt := 0;
				timeout := 0;
				
				busy_prev <= '0';
				TEMP_data_i <= (others => '0');
			
                o_i2c_address <= (others => '0');
				o_i2c_data_wr <= (others => '0');
				o_i2c_ena <= '0';
				o_i2c_rw <= '0';
				
				state <= s_TEMP;
            else 
				case state is 
					when s_idle =>
						state <= s_idle;
					when s_TEMP =>
						
                    -- Start counting timeout only once after last byte is read
                    if (reading_in_progress = false) then
                        timeout := 0;  -- Reset only once at start
                    end if;

                    if timeout = Clockfrequency/1000 then
                        state <= s_TEMP_send;
                        timeout := 0;
                        reading_in_progress := false;
                    else
                        timeout := timeout + 1;
                    end if;

                    busy_prev <= i_busy;

                    if (busy_prev = '0' and i_busy = '1') then
                        busy_cnt := busy_cnt + 1;
                        reading_in_progress := true; -- Mark we are reading now
                    end if;

                    case busy_cnt is
                        when 0 =>
                            o_i2c_ena     <= '1';
                            o_i2c_address <= "1101000";
                            o_i2c_rw      <= '0';
                            o_i2c_data_wr <= "00000000";

                        when 1 =>
                            o_i2c_rw <= '1';

                        when 2 =>
                            if(i_busy = '0') then
                                TEMP_data_i(63 downto 56) <= i_data_read;
                            end if;

                        when 3 =>
                            if(i_busy = '0') then
                                TEMP_data_i(55 downto 48) <= i_data_read;
                            end if;

                        when 4 =>
                            if(i_busy = '0') then
                                TEMP_data_i(47 downto 40) <= i_data_read;
                            end if;

                        when 5 =>
                            if(i_busy = '0') then
                                TEMP_data_i(39 downto 32) <= i_data_read;
                            end if;

                        when 6 =>
                            if(i_busy = '0') then
                                TEMP_data_i(31 downto 24) <= i_data_read;
                            end if;

                        when 7 =>
                            if(i_busy = '0') then
                                TEMP_data_i(23 downto 16) <= i_data_read;
                            end if;

                        when 8 =>
                            if(i_busy = '0') then
                                TEMP_data_i(15 downto 8) <= i_data_read;
                            end if;

                        when 9 =>
                            o_i2c_ena <= '0';
                            if(i_busy = '0') then
                                busy_cnt := 0;
                                TEMP_data_i(7 downto 0) <= i_data_read;
                                state <= s_TEMP_send;
                            end if;

                        when others =>
                            null;
                    end case;
						
					when s_TEMP_send =>					
						o_i2c_ena <= '0';
						if mess_cnt <= busy_cnt - 2 then -- runs through all the bytes received
							if TX_done = '1' then
								mess_cnt := mess_cnt + 1;
								TEMP_DV <= '0';
							else 									
								TEMP_DV <= '1';
								TEMP_data <= TEMP_data_i(63-(mess_cnt*8) downto 56-(mess_cnt*8));
							end if;
							state <= s_TEMP_send;
						else 
							state <= s_cleanup;
						end if;
						
					when s_cleanup =>
								
						busy_cnt := 0;
						mess_cnt := 0;
						timeout := 0;
						
						busy_prev <= '0';
						TEMP_data_i <= (others => '0');
					
						o_i2c_address <= (others => '0');
						o_i2c_data_wr <= (others => '0');
						o_i2c_ena <= '0';
						o_i2c_rw <= '0';
						
						state <= s_idle;
					
				end case;
            end if;
        else
            null;
        end if;  
    end process;
end rtl;
