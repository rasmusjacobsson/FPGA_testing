----------------------------------------------------------------------------------
-- Testbench for fpga_rebooter
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_fpga_rebooter is
end tb_fpga_rebooter;

architecture sim of tb_fpga_rebooter is

    -- DUT ports
    signal clk            : std_logic := '0';
    signal reboot_trigger : std_logic := '0';
    signal led0           : std_logic;
    signal led1           : std_logic;

    -- Clock period
    constant CLK_PERIOD : time := 10 ns;

begin

    ----------------------------------------------------------------------
    -- Instantiate DUT
    ----------------------------------------------------------------------
    uut: entity work.fpga_rebooter
        port map (
            clk            => clk,
            reboot_trigger => reboot_trigger,
            led0           => led0,
            led1           => led1
        );

    ----------------------------------------------------------------------
    -- Clock generation
    ----------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    ----------------------------------------------------------------------
    -- Stimulus
    ----------------------------------------------------------------------
    stim_proc: process
    begin
        -- Initial state
        reboot_trigger <= '0';
        wait for 100 ns;

        -- Trigger a reboot
        reboot_trigger <= '1';
        wait for CLK_PERIOD;
        reboot_trigger <= '0';

        -- Let the state machine run
        wait for 500 ns;

        -- Trigger again after some idle time
        wait for 200 ns;
        reboot_trigger <= '1';
        wait for CLK_PERIOD;
        reboot_trigger <= '0';

        wait for 500 ns;

        -- Finish simulation
        assert false report "Simulation complete" severity failure;
    end process;

end sim;
