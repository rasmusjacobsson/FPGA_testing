----------------------------------------------------------------------------------
-- Testbench for BF_formatter
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use std.textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_BF_formatter is
end tb_BF_formatter;

architecture tb of tb_BF_formatter is

    -- Clock period for 12 MHz
    constant CLK_PERIOD : time := 83.33 ns;

    -- DUT signals
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '0';
    signal BF_packet_got : std_logic := '0';
    
    signal SRAM_data_DV  : std_logic := '0';
	signal SRAM_data     : std_logic_vector(7 downto 0) := (others => '0');
    
    signal RTC_data_DV   : std_logic := '0';
    signal RTC_data      : std_logic_vector(16 downto 0) := (others => '0');
    signal RTC_request   : std_logic;
    
    signal I2C_read_done : std_logic;
    signal BF_packet_DV  : std_logic;
    signal BF_packet     : std_logic_vector(191 downto 0);

begin
    ------------------------------------------------------------------------
    -- DUT Instantiation
    ------------------------------------------------------------------------
    uut: entity work.BF_formatter
        generic map (
            Clockfrequency => 12_000_000,
            Baud_Rate      => 400000
        )
        port map (
            clk           => clk,
            rst           => rst,
            BF_packet_got => BF_packet_got,
            SRAM_data_DV  => SRAM_data_DV,
            SRAM_data     => SRAM_data,
            RTC_data_DV   => RTC_data_DV,
            RTC_data      => RTC_data,
            RTC_request   => RTC_request,
            I2C_read_done => I2C_read_done,
            BF_packet_DV  => BF_packet_DV,
            BF_packet     => BF_packet
        );

    ------------------------------------------------------------------------
    -- Clock generation
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
        -- Helper signals for packet decoding
        variable v_ID     : std_logic_vector(1 downto 0);
        variable v_RTC    : std_logic_vector(16 downto 0);
        variable v_SRAM   : std_logic_vector(171 downto 0);
        variable v_pad    : std_logic_vector(0 downto 0);
    begin
        --------------------------------------------------------------------
        -- Apply reset
        --------------------------------------------------------------------
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for 2*CLK_PERIOD;
        --------------------------------------------------------------------
        -- Send SRAM data: 22 bytes total (172+4 bits)
        --------------------------------------------------------------------
        for i in 0 to 21 loop
            SRAM_data <= std_logic_vector(to_unsigned(i*2, 8));
            SRAM_data_DV <= '1';
            wait for CLK_PERIOD;
            SRAM_data_DV <= '0';
            wait for CLK_PERIOD;
        end loop;

        wait for 5*CLK_PERIOD;
        
        if RTC_request = '0' then
            wait until RTC_request = '1';    
        end if;
        --------------------------------------------------------------------
        -- Provide RTC data (17 bits)
        --------------------------------------------------------------------
        RTC_data <= "10101010101010101";
        RTC_data_DV <= '1';
        wait for CLK_period; 
        RTC_data_DV <= '0';

        --------------------------------------------------------------------
        -- Wait for HK_packet_DV high
        --------------------------------------------------------------------
        wait until BF_packet_DV = '1';
        
        v_ID   := BF_packet(191 downto 190);
        v_RTC  := BF_packet(189 downto 173);
        v_SRAM := BF_packet(172 downto 1);
        v_pad  := BF_packet(0 downto 0);

        report "===== BITFLIP Packet Breakdown =====";
        report "ID      : " & to_hstring(v_ID);
        report "RTC     : " & to_hstring(v_RTC);
        report "SRAM    : " & to_hstring(v_SRAM);
        report "Padding : " & to_hstring(v_pad);
        report "===================================";

        --------------------------------------------------------------------
        -- Simulate packet acknowledgment
        --------------------------------------------------------------------
        BF_packet_got <= '1';
        wait for 2*CLK_PERIOD;
        BF_packet_got <= '0';

        --------------------------------------------------------------------
        -- Finish simulation
        --------------------------------------------------------------------
        wait for 20*CLK_PERIOD;
        report "Simulation completed successfully.";
        wait;
    end process;

end tb;
