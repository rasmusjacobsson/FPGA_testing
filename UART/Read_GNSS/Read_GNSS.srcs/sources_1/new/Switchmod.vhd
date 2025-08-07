----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Switchmod is
  Port (sysclk   : in std_logic;
        i_signal : in std_logic;
        o_signal  : out std_logic := '0';
        led0      : out std_logic := '0');
end Switchmod;

architecture rtl of Switchmod is

  type SM_State is (HIGH, LOW);
  signal State : SM_State := LOW;
  
  signal i_signal_prev : std_logic := '0';

begin

  process(sysclk) is
  begin
    if rising_edge(sysclk) then
      case State is
        
        when LOW =>
          o_signal <= '0';
          led0     <= '0';
          
          if i_signal = '1' and i_signal_prev = '0' then
            State <= HIGH;
            o_signal <= '1';
            led0     <= '1';
          end if;
          i_signal_prev <= i_signal;
          
        when HIGH =>
          o_signal <= '1';
          led0     <= '1';
          
          if i_signal = '1' and i_signal_prev = '0' then
            State <= LOW;
            o_signal <= '0';
            led0     <= '0';
          end if;
          i_signal_prev <= i_signal;
        
        when others =>
          State <= LOW;
          
      end case;
    end if;
  end process;
end rtl;
