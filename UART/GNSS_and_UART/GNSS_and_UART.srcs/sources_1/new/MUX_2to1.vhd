----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2025 02:01:11 PM
-- Design Name: 
-- Module Name: MUX_2to1 - Behavioral
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

entity MUX_2to1 is
    Port ( sysclk : in std_logic;
           sel : in std_logic;
           i_TX_DV_0 : in std_logic;
           i_TX_DV_1 : in std_logic;
           i_TX_Byte_0 : in std_logic_vector(7 downto 0);
           i_TX_Byte_1 : in std_logic_vector(7 downto 0);
           mux_TX_DV_out : out std_logic;
           mux_TX_out : out std_logic_vector(7 downto 0));
end MUX_2to1;

architecture rtl of MUX_2to1 is

    type SM_State is (HIGH, LOW);
    signal State : SM_State := LOW;
    
    signal sel_prev : std_logic := '0';

begin
    process(sysclk) is
    begin
        if rising_edge(sysclk) then
            case State is
            
                when LOW =>
                    mux_TX_DV_out <= i_TX_DV_0;
                    mux_TX_out <= i_TX_Byte_0;
                    
                    if sel = '1' and sel_prev = '0' then
                        State <= HIGH;
                        mux_TX_DV_out <= i_TX_DV_1;
                        mux_TX_out <= i_TX_BYTE_1;
                    end if;
                    sel_prev <= sel;
                
                when HIGH =>
                    mux_TX_DV_out <= i_TX_DV_1;
                    mux_TX_out <= i_TX_BYTE_1;
                    
                    if sel = '1' and sel_prev = '0' then
                        State <= LOW;
                        mux_TX_DV_out <= i_TX_DV_0;
                        mux_TX_out <= i_TX_Byte_0;
                    end if;
                    sel_prev <= sel;
                
                when others =>
                    State <= LOW;
            
            end case;
        end if;
    end process;

end rtl;
