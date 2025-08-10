----------------------------------------------------------------------------------
-- Company:  GLITH
-- Engineer: SEB, Rasmus
----------------------------------------------------------------------------------
-- This is a modified version of Read_Sensorsmod made to take sensor data on request.
-- Only taking the data from the sensor which was requested.

-- V1.0
-- This is a module which will test the i2c protocol.
-- If it does everything correctly, data should be read 
-- first from the temp dev board, then the altimeter
-- dev board, and then the RTC dev board. There should also be
-- a 5 seconds delay between all of these.
-- V2.0
-- Changed glitch in RTC state (wrong data)
-- Changed IDLE state to move to PREP-ALT and not ALT, also a glitch
-- V3.0
-- Fixed data taken from ALT and RTC. (There was a bug that made the last
-- byte not being transmitted to the UART module)
-- V4.0
-- Fixed a bug with reading data from altimeter sensor by adding the
-- pressure conversion, before this was done wrong.
-- Added ALT_READ state
-- V5.0 Will clarify if it works. Basically sending "write" in prep_alt 
-- and read_alt was done incorrectly by turning off i2c_ena before the 
-- entire command is sent.
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
       i_TX_done_HK      : in std_logic;
       i_TX_done_BF      : in std_logic;
       i_TX_done_RAD     : in std_logic;
	   i_HK_RTC_request  : in std_logic;
	   i_BF_RTC_request  : in std_logic;
	   i_RAD_RTC_request : in std_logic;
	   i_HK_ALT_request  : in std_logic;
	   i_HK_TEMP_request : in std_logic;
       o_i2c_ena     : out std_logic;
       o_i2c_address : out std_logic_vector(6 downto 0);
       o_i2c_rw      : out std_logic;
       o_i2c_data_wr : out std_logic_vector(7 downto 0);
       o_TX_DV_HK    : out std_logic;
	   o_TX_DV_BF 	 : out std_logic;
	   o_TX_DV_RAD 	 : out std_logic;
       o_TX_data     : out std_logic_vector(7 downto 0);
       led2          : out std_logic);
end I2C_sensor_data_fetcher;

architecture rtl of I2C_sensor_data_fetcher is

  type SM_Main is (IDLE,TEMP,SEND_TEMP,PREP_ALT,ALT_READ,ALT,SEND_ALT,RTC,SEND_RTC);
  signal state : SM_Main;
  
  type Who_requested_rtc is (HK,BF,RAD);
  signal who_requested : Who_requested_rtc;  -- Used to save a local signal of who requested the rtc data(needed for which tx_dv to drive)
  
  signal busy_prev : std_logic;
  signal temp_data : std_logic_vector(15 downto 0);
  signal alt_data  : std_logic_vector(23 downto 0);
  signal rtc_data  : std_logic_vector(23 downto 0);
  
  signal TX_done_prev : std_logic;
  

begin

  -- Process of hell
  Main : process(sysclk, reset_n)
  
    variable sec_cnt    : integer range 0 to 5*Clockfrequency := 0;   -- Count to 5 seconds between sensor readings
    variable busy_cnt   : integer range 0 to 5 := 0;                  -- Count busy transisions during one transaction
    variable conv_cnt   : integer range 0 to Clockfrequency/100 := 0; -- Count for waiting for pressure conversion (10 ms)
    variable mess_cnt   : integer range 0 to 2 := 0;                  -- Counting messages sent to TX module
    variable sensor_cnt : integer range 0 to 2 := 0;                  -- Counts which sensor data will be taken from
    
  begin
  
    if(reset_n = '0') then
    sec_cnt    := 0;
    busy_cnt   := 0;
    conv_cnt   := 0;
    mess_cnt   := 0;
    sensor_cnt := 0;
    temp_data  <= (others => '0');
    alt_data   <= (others => '0');
    rtc_data   <= (others => '0');
    o_i2c_ena  <= '0';
    o_TX_DV_HK    <= '0';
    o_TX_DV_BF    <= '0';
    o_TX_DV_RAD    <= '0';
    busy_prev  <= '0';
    TX_done_prev <= '1';
    state      <= IDLE;
    led2 <= '0';
    
    elsif rising_edge(sysclk) then
      case state is 
      
        -- Waits here 5 seconds before IDLEing to read sensors
        when IDLE =>
          o_TX_DV_HK <= '0';                     -- Keep TX driver low
		  o_TX_DV_BF    <= '0';
		  o_TX_DV_RAD    <= '0';
		  
		  if(i_HK_RTC_request = '1' or i_RAD_RTC_request = '1' or i_BF_RTC_request = '1') then
			state <= RTC;
		  elsif(i_HK_ALT_request) then
			state <= PREP_ALT;
		  elsif(i_HK_TEMP_request) then
			state <= TEMP;
		  else
			state <= IDLE;
		  end if;
		  
        -- Takes data from the temperature dev board
        when TEMP =>
          busy_prev <= i_busy;
          if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
            busy_cnt := busy_cnt + 1;
          end if;
          -- Case for which command we are currently on according to i2c protocol
          case busy_cnt is
            when 0 =>                                    -- No command latched in i2c master
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              o_i2c_ena     <= '1';                        -- Initiate transaction
              o_i2c_address <= "1000000";                  -- Temp sensor i2c address
              o_i2c_rw       <= '0';                       -- Write mode
              o_i2c_data_wr <= "11100011";                 -- Set pointer to "Measure Temperature" register
            when 1 =>                                    -- 1st command latched in, safe to issue command 2
              o_TX_DV_HK  <= '0';                             -- Keep TX driver low
              o_i2c_rw <= '1';                             -- Read temperature (address still the same)
            when 2 =>                                    -- 2nd command latched in, wait to receive 1st byte of data
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              if(i_busy = '0') then                        -- First data byte is ready
                temp_data(15 downto 8) <= i_data_read;     -- Temperature data from first byte received (MSB)
              end if;
            when 3 =>                                    -- 1st byte of data received, wait to receive 2nd byte of data
              o_i2c_ena <= '0';                            -- Deassert enable to stop transaction after 2nd byte of data is received
              if(i_busy = '0') then                        -- Second byte of data is ready
                busy_cnt := 0;                             -- Reset busy counter
                temp_data(7 downto 0) <= i_data_read;      -- Temperature data from second byte received (LSB)
                
                o_TX_DV_HK   <= '1';                          -- Send first byte to TX module
                o_TX_data <= temp_data(15 downto 8);
                
                
                state <= SEND_TEMP;                        -- Move SEND_TEMP
              end if;
            when OTHERS =>
              NULL;
          end case;
        
        -- Sends temperature reading to computer via TX module (first byte is sent right before coming here)
        when SEND_TEMP =>
          if(i_TX_done_HK = '1') then              -- Waits until previous transmission is done
            o_TX_DV_HK   <= '1';
            o_TX_data <= temp_data(7 downto 0);            
            state     <= IDLE;                 -- Moves to IDLE
          else
            o_TX_DV_HK <= '0';
          end if;
        
        -- Sends command to measure pressure (takes 8.22ms to measure)  
        when PREP_ALT =>
          busy_prev <= i_busy;
          if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
            busy_cnt := busy_cnt + 1;
          end if;
          -- Case for which command we are currently on according to i2c protocol
          case busy_cnt is
            when 0 =>                                    -- No command latched in i2c master
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              o_i2c_ena     <= '1';                        -- Initiate transaction
              o_i2c_address <= "1110110";                  -- Altitude sensor i2c address
              o_i2c_rw       <= '0';                       -- Write mode
              o_i2c_data_wr <= "01001000";                 -- Command to IDLE pressure conversion
            when 1 =>                                    -- 1st busy high: command 1 latched
              -- o_i2c_ena <= '0'; -- REMOVED                           
              if(conv_cnt < Clockfrequency/100) then       -- Wait 10ms before moving on, so pressure measurment is ready
                conv_cnt := conv_cnt + 1;
              else
                conv_cnt := 0;
                if(i_busy = '0') then                    -- Pressure convertion complete
                  o_i2c_ena <= '0'; -- NEW Deassert enable to stop transaction
                  busy_cnt := 0;
                  state <= ALT_READ;
                end if;
              end if;
            when OTHERS =>
              NULL;
          end case;
          
        -- Sends command to read pressure
        when ALT_READ =>
          busy_prev <= i_busy;
          if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
            busy_cnt := busy_cnt + 1;
          end if;
          -- Case for which command we are currently on according to i2c protocol
          case busy_cnt is
            when 0 =>                                    -- No command latched in i2c master
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              o_i2c_ena     <= '1';                        -- Initiate transaction
              o_i2c_address <= "1110110";                  -- Altitude sensor i2c address
              o_i2c_rw       <= '0';                       -- Write mode
              o_i2c_data_wr <= "00000000";                 -- Command to read pressure data
            when 1 =>                                    -- 1st busy high: command 1 latched
              -- o_i2c_ena <= '0'; REMOVED                          
                if(i_busy = '0') then                      -- Read pressure command complete
                  o_i2c_ena <= '0'; -- NEW Deassert enable to stop transaction
                  busy_cnt := 0;
                  state <= ALT;
                end if;
            when OTHERS =>
              NULL;
          end case;
          
        -- Takes data from the altimeter dev board
        when ALT =>
          busy_prev <= i_busy;
          if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
            busy_cnt := busy_cnt + 1;
          end if;
          -- Case for which command we are currently on according to i2c protocol
          case busy_cnt is
            when 0 =>                                    -- No command latched in i2c master
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              o_i2c_ena     <= '1';                        -- Initiate transaction
              o_i2c_address <= "1110110";                  -- Altimeter sensor i2c address
              o_i2c_rw      <= '1';                        -- Read mode
            when 1 =>                                    -- 1st command latched in, safe to issue command 2
              o_TX_DV_HK  <= '0';                             -- Keep TX driver low
              if(i_busy = '0') then                        -- 1st byte of data ready
                alt_data(23 downto 16) <= i_data_read;     -- Save first byte
              end if;
            when 2 =>                                    -- 2nd command latched in, 
              o_TX_DV_HK <= '0';                              -- Keep TX driver low
              if(i_busy = '0') then                        -- 2nd byte of data ready
                alt_data(15 downto 8) <= i_data_read;      -- Save second byte
              end if;
            when 3 =>                                    -- 3rd command latched in, 
              o_i2c_ena <= '0';                            -- Deassert enable to stop transaction 
              if(i_busy = '0') then                        -- 3rd byte of data ready
                busy_cnt := 0;                             -- Reset busy counter
                alt_data(7 downto 0) <= i_data_read;       -- Save last byte 
                
                o_TX_DV_HK   <= '1';                          -- Send first byte to TX module
                o_TX_data <= alt_data(23 downto 16);
                
                state <= SEND_ALT;                         -- Move SEND_ALT
              end if;
            when OTHERS =>
              NULL;
          end case;
          
        -- Sends pressure reading to computer via TX module (first byte is sent right before coming here)
        when SEND_ALT =>
          if(mess_cnt = 0) then                   -- Sending second byte
            if(i_TX_done_HK = '1') then              -- Waits until previous transmission is done
              o_TX_DV_HK   <= '1';
              o_TX_data <= alt_data(15 downto 8);
              
              mess_cnt := mess_cnt + 1;
            else
              o_TX_DV_HK <= '0';
            end if;	
          else                                               -- Sending third and final byte
            TX_done_prev <= i_TX_done_HK;                       -- Makes sure previous message is sent
            if(i_TX_done_HK = '1' and TX_done_prev = '0') then  -- Waits for previous transmission to be done 
              o_TX_DV_HK   <= '1';                         
              o_TX_data <= alt_data(7 downto 0);
              
              TX_done_prev <= '1';
              mess_cnt := 0;
              sensor_cnt := sensor_cnt + 1;       -- Next sensor will be RTC
              state     <= IDLE;                 -- Moves to IDLE
            else
              o_TX_DV_HK <= '0';
            end if;
          end if;
        
        -- Takes data from the RTC dev board
        when RTC =>
          busy_prev <= i_busy;
          if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
            busy_cnt := busy_cnt + 1;
          end if;
          -- Case for which command we are currently on according to i2c protocol
          case busy_cnt is
            when 0 =>                                    -- No command latched in i2c master
              o_i2c_ena     <= '1';                        -- Initiate transaction
              o_i2c_address <= "1101000";                  -- RTC i2c address
              o_i2c_rw       <= '0';                       -- Write mode
              o_i2c_data_wr <= "00000000";                 -- Set pointer to "seconds" register
            when 1 =>                                    -- 1st command latched in, safe to issue command 2
              o_i2c_rw <= '1';                             -- Read seconds register (address still the same)
            when 2 =>                                    -- 2nd command latched in, safe to issue command 3
              if(i_busy = '0') then                        -- 1st byte of data ready
                rtc_data(23 downto 16) <= i_data_read;     -- Save first byte (seconds)
              end if;
            when 3 =>                                    -- 2nd command latched in, 
              if(i_busy = '0') then                        -- 2nd byte of data ready
                rtc_data(15 downto 8) <= i_data_read;      -- Save second byte (minutes)
              end if;
            when 4 =>                                    -- 4th command latched in, 
              o_i2c_ena <= '0';                            -- Deassert enable to stop transaction 
              if(i_busy = '0') then                        -- 3rd byte of data ready
                busy_cnt := 0;                             -- Reset busy counter
                rtc_data(7 downto 0) <= i_data_read;       -- Save last byte (hours)
                
				if(i_HK_RTC_request = '1') then
					o_TX_DV_HK <= '1';
					who_requested <= HK;
				elsif(i_BF_RTC_request = '1') then
					o_TX_DV_BF <= '1';				
					who_requested <= BF;
				elsif(i_RAD_RTC_request = '1') then
					o_TX_DV_RAD <= '1';	
					who_requested <= RAD;
				else
					null;
				end if;				
				
                o_TX_data <= rtc_data(23 downto 16);
                state <= SEND_RTC;                         -- Move to SEND_RTC
				
              end if;
            when OTHERS =>
              NULL;
          end case;
            
        -- Sends RTC reading to computer via TX module (first byte is sent right before coming here)
        when SEND_RTC =>
          if(mess_cnt = 0) then                   -- Sending second byte
            if(i_TX_done_HK = '1' or i_TX_done_BF = '1' or i_TX_done_RAD = '1') then              -- Waits until previous transmission is done
              if(who_requested = HK) then
  				o_TX_DV_HK <= '1';
			  elsif(who_requested = BF) then
				o_TX_DV_BF <= '1';				
			  elsif(who_requested = RAD) then
				o_TX_DV_RAD <= '1';				
			  else
				null;
			  end if;				
			  o_TX_data <= rtc_data(15 downto 8);              
              mess_cnt := mess_cnt + 1;
			  
            else
              o_TX_DV_HK <= '0';
              o_TX_DV_BF <= '0';
              o_TX_DV_RAD <= '0';
            end if;
          else                                               -- Sending third and final byte
            TX_done_prev <= i_TX_done_HK or i_TX_done_BF or i_TX_done_RAD;                       -- Makes sure previous message is sent
            if((i_TX_done_HK = '1' or i_TX_done_BF = '1' or i_TX_done_RAD = '1') and TX_done_prev = '0') then  -- Waits until previous transmission is done
              if(who_requested = HK) then
  				o_TX_DV_HK <= '1';
			  elsif(who_requested = BF) then
				o_TX_DV_BF <= '1';				
			  elsif(who_requested = RAD) then
				o_TX_DV_RAD <= '1';				
			  else
				null;
			  end if;				
			  o_TX_data <= rtc_data(7 downto 0);
              
              TX_done_prev <= '1';
              mess_cnt := 0;
              sensor_cnt := 0;       -- Sensor count reIDLEed, next will be temperature
              state     <= IDLE;    -- Moves to IDLE
            else
              o_TX_DV_HK <= '0';
              o_TX_DV_BF <= '0';
              o_TX_DV_RAD <= '0';            
            end if;
          end if;
          
        when OTHERS =>
          state <= IDLE;
       
      end case;       
    end if;
  end process Main;
end rtl;