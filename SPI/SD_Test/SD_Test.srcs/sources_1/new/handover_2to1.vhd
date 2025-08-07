----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: RASMUS
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity handover_2to1 is
    Port ( sysclk : in std_logic;
           done0 : in std_logic;
           done1 : in std_logic;
           in0 : in std_logic;
           in1 : in std_logic;
           mux_out : out std_logic
       );           
end entity;

architecture rtl of handover_2to1 is

    type SM_State is (HIGH, LOW);
    signal State : SM_State := LOW;
    
    signal done0_prev : std_logic := '0';
    signal done1_prev : std_logic := '0';

begin
    process(sysclk) is
    begin
        if rising_edge(sysclk) then
            case State is
            
                when LOW =>
                    mux_out <= in0;
                    
                    if done0 = '1' and done0_prev = '0' then
                        State <= HIGH;
                        mux_out <= in1;
                    end if;
                    done0_prev <= done0;
                
                when HIGH =>
                    mux_out <= in1;
                    
                    if done1 = '1' and done1_prev = '0' then
                        State <= LOW;
                        mux_out <= in0;
                    end if;
                    done1_prev <= done1;
                
                when others =>
                    State <= LOW;
            
            end case;
        end if;
    end process;

end rtl;

