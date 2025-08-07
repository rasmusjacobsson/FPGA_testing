----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Fredrik
-- 
-- Create Date: 04/08/2025 11:13:37 AM
-- Design Name: SRAM_Initialize
-- Module Name: SRAM_Initialize - RTL
-- Project Name: SRAM
-- Target Devices: 
-- Tool Versions: 
-- Description: Initialization for SRAM configuration. Will write 10101010101010.... to a connected memory device.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: The generics a and d must match with the signal widths of address and data respectively.
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

entity SRAM_Initialize is
generic(
  a :            natural := 8; -- a: address_width of bus
  d :            natural := 16; -- d: data_width of bus
  tWriteCycle :  natural := 60  -- tWriteCycle: time in ns per writing cycle
);

port(
  run :      in  std_logic; -- run: Signal to initialize the memory.
  address :  out std_logic_vector(a-1 downto 0); -- address: GPIO signal connection to address bus
  data :     out std_logic_vector(d-1 downto 0)  -- data: GPIO signal connection to data bus
);
end SRAM_Initialize;

architecture RTL of SRAM_Initialize is
  signal flip_flop : boolean := false; -- flip_flop: Used to decide to start with a zero or a one at each address window
begin
  -- Process to clock the writing to the memory
  process(sysclk)
  begin
    
  end
end RTL;
