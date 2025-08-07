----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 09:49:27 AM
-- Design Name: 
-- Module Name: Wait - RTL
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


library ieee;
use ieee.std_logic_1164.all;

entity myWait is
generic(
  clock_frequency :  natural := 500_000_000 -- Hz
);

port(
  clock :  in  std_logic;
  reset :  in  std_logic;
  tWait :  in  natural;   -- tWait: time to wait in ns
  done  :  out std_logic
);
end myWait;


architecture rtl of myWait is
  constant clock_period_ns :  natural := 1_000_000_000/clock_frequency;  -- clock period in ns
  signal   period_counter :   natural := 1;
begin
  process(clock) is
    variable wait_cycles :  natural;
  begin
    if rising_edge(clock)
    then
      if (reset = '1')
      then
        done <= '0';
        period_counter <= 1;
      else
        wait_cycles := tWait / clock_period_ns;
        if (period_counter >= wait_cycles)
        then
          done <= '1';
        else
          done <= '0';
          period_counter <= period_counter + 1;
        end if;
      end if;
    end if;
  end process;
end rtl;
