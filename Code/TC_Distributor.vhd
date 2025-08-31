----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus
--
-- Takes a byte input (preferably from the UART module) along with a DV signal
-- Compares it to the available commands and sends a pulse through the correct cmd output.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC_distributor is
    generic (
        Clockfrequency : integer := 12 * 1000000; -- 12 MHz
        Baud_Rate      : integer := 400000        -- SPI clock frequency
    );
    Port ( 
        clk   : in  std_logic;
        rst   : in  std_logic;
        TC    : in  std_logic_vector(7 downto 0);
        TC_DV : in  std_logic;
        cmd0  : out std_logic;
        cmd1  : out std_logic;
        cmd2  : out std_logic;
        cmd3  : out std_logic
    );
end TC_distributor;

architecture rtl of TC_distributor is

    -- State machine declaration
    type state_type is (s_idle, s_TC_check);
    signal state : state_type := s_idle;

    -- Internal signals
    signal TC_i : std_logic_vector(7 downto 0) := (others => '0');

    -- Command lookup constants
    constant CMD0_lookup : std_logic_vector(7 downto 0) := x"00";
    constant CMD1_lookup : std_logic_vector(7 downto 0) := x"20";
    constant CMD2_lookup : std_logic_vector(7 downto 0) := x"40";
    constant CMD3_lookup : std_logic_vector(7 downto 0) := x"60";

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                -- Reset logic
                cmd0  <= '0';
                cmd1  <= '0';
                cmd2  <= '0';
                cmd3  <= '0';
                TC_i  <= (others => '0');
                state <= s_idle;

            else
                case state is

                    -- Idle state: wait for data valid
                    when s_idle =>
                        cmd0 <= '0';
                        cmd1 <= '0';
                        cmd2 <= '0';
                        cmd3 <= '0';

                        if TC_DV = '1' then
                            TC_i  <= TC;
                            state <= s_TC_check;
                        else
                            TC_i  <= (others => '0');
                            state <= s_idle;
                        end if;

                    -- Check state: compare command byte
                    when s_TC_check =>
                        if    TC_i = CMD0_lookup then
                            cmd0 <= '1';
                        elsif TC_i = CMD1_lookup then
                            cmd1 <= '1';
                        elsif TC_i = CMD2_lookup then
                            cmd2 <= '1';
                        elsif TC_i = CMD3_lookup then
                            cmd3 <= '1';
                        else
                            null;
                        end if;

                        -- Return to idle after command
                        TC_i  <= (others => '0');
                        state <= s_idle;

                end case;
            end if;
        end if;
    end process;

end rtl;
