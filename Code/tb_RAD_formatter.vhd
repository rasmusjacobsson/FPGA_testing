----------------------------------------------------------------------------------
-- Testbench for BF_formatter
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use std.textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_RAD_formatter is
end tb_RAD_formatter;

architecture tb of tb_RAD_formatter is

    -- Clock period for 12 MHz
    constant CLK_PERIOD : time := 83.33 ns;

    -- DUT signals
    signal clk            : std_logic := '0';
    signal rst            : std_logic := '0';
    signal RAD_packet_got : std_logic := '0';
    
    signal RAD_data_DV    : std_logic := '0';
	signal RAD_data       : std_logic_vector(7 downto 0) := (others => '0');
    
    signal RTC_data_DV    : std_logic := '0';
    signal RTC_data       : std_logic_vector(16 downto 0) := (others => '0');
    signal RTC_request    : std_logic;
    
    signal I2C_read_done  : std_logic;
    signal RAD_packet_DV  : std_logic;
    signal RAD_packet     : std_logic_vector(10007 downto 0);

begin
    ------------------------------------------------------------------------
    -- DUT Instantiation
    ------------------------------------------------------------------------
    uut: entity work.RAD_formatter
        generic map (
            Clockfrequency => 12_000_000,
            Baud_Rate      => 400000
        )
        port map (
            clk            => clk,
            rst            => rst,
            RAD_packet_got => RAD_packet_got,
            RAD_data_DV    => RAD_data_DV,
            RAD_data       => RAD_data,
            RTC_data_DV    => RTC_data_DV,
            RTC_data       => RTC_data,
            RTC_request    => RTC_request,
            I2C_read_done  => I2C_read_done,
            RAD_packet_DV  => RAD_packet_DV,
            RAD_packet     => RAD_packet
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
        variable v_RAD    : std_logic_vector(9981 downto 0);
        variable v_pad    : std_logic_vector(6 downto 0);
    begin
        --------------------------------------------------------------------
        -- Apply reset
        --------------------------------------------------------------------
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for 2*CLK_PERIOD;
        --------------------------------------------------------------------
        -- Send SRAM data: 1248 bytes total (172+4 bits)
        --------------------------------------------------------------------
        for i in 0 to 1247 loop
            RAD_data <= std_logic_vector(to_unsigned(i mod 256, 8));
            RAD_data_DV <= '1';
            wait for CLK_PERIOD;
            RAD_data_DV <= '0';
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
        wait until RAD_packet_DV = '1';
        
        v_ID   := RAD_packet(10007 downto 10006);
        v_RTC  := RAD_packet(10005 downto 9989);
        v_RAD  := RAD_packet(9988 downto 7);
        v_pad  := RAD_packet(6 downto 0);

        report "===== BITFLIP Packet Breakdown =====";
        report "ID      : " & to_hstring(v_ID);
        report "RTC     : " & to_hstring(v_RTC);
        report "RAD    : " & to_hstring(v_RAD);
        report "Padding : " & to_hstring(v_pad);
        report "===================================";

        --------------------------------------------------------------------
        -- Simulate packet acknowledgment
        --------------------------------------------------------------------
        RAD_packet_got <= '1';
        wait for 2*CLK_PERIOD;
        RAD_packet_got <= '0';

        --------------------------------------------------------------------
        -- Finish simulation
        --------------------------------------------------------------------
        wait for 20*CLK_PERIOD;
        report "Simulation completed successfully.";
        wait;
    end process;

end tb;
