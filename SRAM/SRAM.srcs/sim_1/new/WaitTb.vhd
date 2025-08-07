----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 02:03:25 PM
-- Design Name: 
-- Module Name: WaitTb - sim
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

entity WaitTb is
end entity;

architecture sim of WaitTb is
  signal reset :  std_logic := '0';
  signal tWait :  natural := 16; -- 100 ns
  signal done :   std_logic;
  signal clock :  std_logic := '0';
  
  component myWait is
    generic(
      clock_frequency :  natural := 500_000_000 -- Hz
    );
    port(
      clock :  in  std_logic;
      reset :  in  std_logic;
      tWait :  in  natural;   -- tWait: time to wait in ns
      done  :  out std_logic
    );
  end component myWait;
begin
  -- Component instance
  i_wait : myWait
  generic map(
    clock_frequency => 500_000_000
  )
  port map(
    clock => clock,
    reset => reset,
	tWait => tWait,
	done  => done
  );

  -- 500MHz clock
  clock <= not clock after 1 ns;
  
  stim_process : process
  begin
    reset <= '1';
    wait for 5 ns;
    reset <= '0';
    wait for 20 ns;
    reset <= '1';
    wait for 6 ns;
    reset <= '0';
    
    wait;
  end process;

end architecture;
