----------------------------------------------------------------------------------
-- Testbench for TC_distributor
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_TC_distributor is
-- Testbenches have no ports
end tb_TC_distributor;

architecture tb of tb_TC_distributor is

    -- Constants
    constant CLK_PERIOD : time := 83.33 ns; -- 12 MHz clock (~1/12e6)
    
    -- DUT signals
    signal clk   : std_logic := '0';
    signal rst   : std_logic := '0';
    signal TC    : std_logic_vector(7 downto 0) := (others => '0');
    signal TC_DV : std_logic := '0';
    signal cmd0  : std_logic;
    signal cmd1  : std_logic;
    signal cmd2  : std_logic;
    signal cmd3  : std_logic;

begin
    ------------------------------------------------------------------------
    -- DUT instantiation
    ------------------------------------------------------------------------
    uut: entity work.TC_distributor
        generic map (
            Clockfrequency => 12_000_000,
            Baud_Rate      => 400000
        )
        port map (
            clk   => clk,
            rst   => rst,
            TC    => TC,
            TC_DV => TC_DV,
            cmd0  => cmd0,
            cmd1  => cmd1,
            cmd2  => cmd2,
            cmd3  => cmd3
        );

    ------------------------------------------------------------------------
    -- Clock generation process
    ------------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    ------------------------------------------------------------------------
    -- Stimulus process
    ------------------------------------------------------------------------
    stim_proc : process
    begin
        --------------------------------------------------------------------
        -- Apply reset
        --------------------------------------------------------------------
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for 2*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Test CMD0 (x"00")
        --------------------------------------------------------------------
        TC <= x"00";
        TC_DV <= '1';
        wait for CLK_PERIOD;
        TC_DV <= '0';
        wait for 5*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Test CMD1 (x"20")
        --------------------------------------------------------------------
        TC <= x"20";
        TC_DV <= '1';
        wait for CLK_PERIOD;
        TC_DV <= '0';
        wait for 5*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Test CMD2 (x"40")
        --------------------------------------------------------------------
        TC <= x"40";
        TC_DV <= '1';
        wait for CLK_PERIOD;
        TC_DV <= '0';
        wait for 5*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Test CMD3 (x"60")
        --------------------------------------------------------------------
        TC <= x"60";
        TC_DV <= '1';
        wait for CLK_PERIOD;
        TC_DV <= '0';
        wait for 5*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Test invalid command (x"FF")
        --------------------------------------------------------------------
        TC <= x"FF";
        TC_DV <= '1';
        wait for CLK_PERIOD;
        TC_DV <= '0';
        wait for 5*CLK_PERIOD;

        --------------------------------------------------------------------
        -- Stop simulation
        --------------------------------------------------------------------
        wait;
    end process;

end tb;
