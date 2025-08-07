----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2025 06:16:21 PM
-- Design Name: 
-- Module Name: reboot_control - Behavioral
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

entity reboot_control is
    Port ( 
        clk : in std_logic;
        TX_DV : out std_logic;
        TX_byte : out std_logic_vector(7 downto 0)
    );
end reboot_control;

architecture Behavioral of reboot_control is
    signal state : integer range 0 to 1 := 0;
begin
    process(clk)
    begin
        
        if rising_edge(clk) then
            case state is
                when 0 => 
                    TX_DV <= '1';
                    TX_byte <= x"AA";
                    state <= 1;
                when 1 =>
                    TX_DV <= '0';
                    TX_byte <= x"00"; 
                    state <= state;   
            end case;    
        else
            null;
        end if;
    end process;

end Behavioral;
