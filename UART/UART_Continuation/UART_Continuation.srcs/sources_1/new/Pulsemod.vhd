----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2025 15:26:00
-- Design Name: 
-- Module Name: Pulsemod - rtl
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
use IEEE.NUMERIC_STD.ALL;

entity Pulsemod is
  generic(PULSE_LENGTH : integer := 2); -- Clk signals
  Port (sysclk   : in std_logic;
        i_signal : in std_logic;
        o_pulse  : out std_logic := '0');
end Pulsemod;

architecture rtl of Pulsemod is

  --type States is (Idle, Active);
  --signal SM : States := Idle;

  signal Counter           : integer range 0 to 2 := 0;
  signal Active            : std_logic := '0';
  signal i_signal_previous : std_logic := '0';

begin

  process(sysclk) is
  begin
  
if rising_edge(sysclk) then
            -- Detect the rising edge of trigger (kinda)
            if i_signal = '1' and i_signal_previous = '0' then
                active <= '1';
                counter <= 0;
            end if;

            -- Update i_signal_Previous
            i_signal_previous <= i_signal;

            -- Pulse for PULSE_LENGTH
            if Active = '1' then
                if counter < PULSE_LENGTH then
                    o_pulse <= '1';
                    counter <= counter + 1;
                else
                    o_pulse <= '0';
                    Active  <= '0';  -- Stop after PULSE_LENGTH clock cycles
                end if;
            else
                o_pulse <= '0';
            end if;
        end if;
    
  end process;
end rtl;
