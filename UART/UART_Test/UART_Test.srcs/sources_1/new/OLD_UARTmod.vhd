----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2025 17:12:01
-- Design Name: 
-- Module Name: UARTmod - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Old_UARTmod is
  generic(ClockFrequency : integer := 12*1000000; -- 12 MHz
          Baud_Rate      : integer := 9600;
          Stop_Bit       : integer := 1); -- Stop bit length, not value. Can be 1,2,3
  Port(Tx_Done_Tick_O : out std_logic;
       Tx_O           : out std_logic;
       Data_out       : out std_logic_vector(7 downto 0);
       Rx_Done_Tick_O : out std_logic;
       
       sysclk          : in std_logic;
       Tx_Start_Tick_I : in std_logic;
       Data_in         : in std_logic_vector(7 downto 0);
       Rx_I            : in std_logic);
end OLD_UARTmod;

architecture Behavioral of OLD_UARTmod is

  type T_State is (Tx_IDLE, Tx_START, Tx_DATA, Tx_STOP);
  signal Tx_State : T_State := Tx_IDLE;

  type R_State is (Rx_IDLE, Rx_START, Rx_DATA, Rx_STOP);
  signal Rx_State : R_State := Rx_IDLE;
  
  constant bit_timer_lim     : integer := Clockfrequency/Baud_Rate;
  constant halfbit_timer_lim : integer := bit_timer_lim/2;
  
  signal bit_timer_Tx   : integer := 0;
  signal bit_counter_Tx : integer := 0;
  signal bit_timer_Rx   : integer := 0;
  signal bit_counter_Rx : integer := 0;
  signal tx_buffer      : std_logic_vector(7 downto 0);
  
begin

   
  UART_Tx: process(sysclk) -- This process handles transmission
  begin
    if rising_edge(sysclk) then
      if(Tx_Start_Tick_I = '0') then       -- "if" is true when no transmission is happening
        Tx_State <= Tx_IDLE;
      else
        bit_timer_Tx <= bit_timer_Tx + 1;
        
        case Tx_State is                   -- Case for when transmission is happening
        
          when Tx_IDLE =>                  -- This happens once (when transmission starts)
            Tx_O           <= '1';
            Tx_Done_Tick_O <= '0';
            
            if(Tx_Start_Tick_I = '1') then -- Transmission is starting
              tx_buffer <= Data_in;
              Tx_O      <= '0';
              Tx_State  <= Tx_Start;
            end if;
            
          when Tx_START =>                 -- START bit (Tx_O = 0)
            
            if(bit_timer_Tx = bit_timer_lim - 1) then -- Data bits start after one bit limit
              bit_timer_Tx <= 0;
              Tx_State     <= Tx_DATA;
            end if;
            
          when Tx_DATA =>
            Tx_O <= tx_buffer(bit_counter_Tx);        -- First data bit is set as output
            
            if(bit_timer_Tx = bit_timer_lim - 1) then -- Move to next data bit
              bit_timer_Tx   <= 0;
              bit_counter_Tx <= bit_counter_Tx + 1;
              
              if(bit_counter_Tx = 7) then            -- All data bits have been transmitted
                bit_timer_Tx <= 0;
                Tx_O         <= '1';
                Tx_State     <= Tx_STOP;
              end if;
            end if;
            
          when Tx_STOP =>
          
            if(bit_timer_Tx = bit_timer_lim - 1) then -- Once stop bit complete
              bit_timer_Tx <= 0;
              bit_counter_Tx <= bit_counter_Tx + 1;
              
              if(bit_counter_Tx = 7 + Stop_Bit) then  -- All stop bits have been transmitted
                bit_timer_Tx   <= 0;
                bit_counter_Tx <= 0;
                Tx_Done_Tick_O <= '0';
                Tx_State       <= Tx_IDLE;            
              end if;
            end if;
            
        end case;
      end if;
    end if;
  end process UART_Tx;


  UART_Rx: process(sysclk) -- This process handles receiving
  begin
    if rising_edge(sysclk) then
      if(Rx_I = '1' and bit_timer_Rx = 0) then -- "if" is true when no receiving is happening
        Rx_State <= Rx_IDLE;
      else
        bit_timer_Rx <= bit_timer_Rx + 1;
        
        case Rx_State is                       -- Case for when receiving is happening
          
          when Rx_IDLE =>                      -- This happens once (when receiving starts)
            Rx_Done_Tick_O <= '0';             
            
            if(Rx_I = '0') then                -- Receiving is starting
              Rx_State <= Rx_START;
            end if;
          
          when Rx_START =>                     -- Moves to Rx_DATA once the process is in the middle of the first data bit
          
            if(bit_timer_Rx = bit_timer_lim + halfbit_timer_lim - 1) then 
              bit_timer_Rx <= halfbit_timer_lim;
              Rx_State     <=Rx_DATA;
            end if;
          
          when Rx_DATA =>                                                 -- Saves the received data in Data_out
            Data_out(bit_counter_Rx) <= Rx_I; --think this is wrong, it samples next data bit
            
            if(bit_timer_Rx = bit_timer_lim + halfbit_timer_lim - 1) then -- Moves to next bit
              bit_timer_Rx   <= halfbit_timer_lim;
              bit_counter_Rx <= bit_counter_Rx + 1;
              
              if(bit_counter_Rx = 7) then
                Rx_State <= Rx_STOP;
              end if;
              --bit_counter_Rx <= bit_counter_Rx + 1; (dont think this should be here)
            end if;
          
          when RX_STOP =>
            
            if(bit_timer_Rx = bit_timer_lim -1) then
              bit_timer_Rx   <= 0;
              Rx_Done_Tick_O <= '1';
              bit_counter_Rx <= 0;
              Rx_State       <= Rx_IDLE;
            end if;
            
        end case;
      end if;
    end if;
  end process UART_Rx;
  
  end architecture;