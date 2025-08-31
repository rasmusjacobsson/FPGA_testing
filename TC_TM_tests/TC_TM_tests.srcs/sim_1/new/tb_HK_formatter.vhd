----------------------------------------------------------------------------------
-- Testbench for HK_formatter
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use std.textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_HK_formatter is
end tb_HK_formatter;

architecture tb of tb_HK_formatter is

    -- Clock period for 12 MHz
    constant CLK_PERIOD : time := 83.33 ns;

    -- DUT signals
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '0';
    signal HK_packet_got : std_logic := '0';

    signal GNSS_data_DV  : std_logic := '0';
    signal GNSS_data     : std_logic_vector(7 downto 0) := (others => '0');

    signal RTC_data_DV   : std_logic := '0';
    signal RTC_data      : std_logic_vector(16 downto 0) := (others => '0');
    signal RTC_request   : std_logic;

    signal ALT_data_DV   : std_logic := '0';
    signal ALT_data      : std_logic_vector(23 downto 0) := (others => '0');
    signal ALT_request   : std_logic;

    signal TEMP_data_DV  : std_logic := '0';
    signal TEMP_data     : std_logic_vector(95 downto 0) := (others => '0');
    signal TEMP_request  : std_logic;

    signal I2C_read_done : std_logic;
    signal HK_packet_DV  : std_logic;
    signal HK_packet     : std_logic_vector(199 downto 0);

begin
    ------------------------------------------------------------------------
    -- DUT Instantiation
    ------------------------------------------------------------------------
    uut: entity work.HK_formatter
        generic map (
            Clockfrequency => 12_000_000,
            Baud_Rate      => 400000
        )
        port map (
            clk           => clk,
            rst           => rst,
            HK_packet_got => HK_packet_got,
            GNSS_data_DV  => GNSS_data_DV,
            GNSS_data     => GNSS_data,
            RTC_data_DV   => RTC_data_DV,
            RTC_data      => RTC_data,
            RTC_request   => RTC_request,
            ALT_data_DV   => ALT_data_DV,
            ALT_data      => ALT_data,
            ALT_request   => ALT_request,
            TEMP_data_DV  => TEMP_data_DV,
            TEMP_data     => TEMP_data,
            TEMP_request  => TEMP_request,
            I2C_read_done => I2C_read_done,
            HK_packet_DV  => HK_packet_DV,
            HK_packet     => HK_packet
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
        variable v_GNSS   : std_logic_vector(54 downto 0);
        variable v_TEMP   : std_logic_vector(95 downto 0);
        variable v_ALT    : std_logic_vector(23 downto 0);
        variable v_pad    : std_logic_vector(5 downto 0);
    begin
        --------------------------------------------------------------------
        -- Apply reset
        --------------------------------------------------------------------
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for 2*CLK_PERIOD;
        --------------------------------------------------------------------
        -- Send GNSS data: 7 bytes total (55 bits)
        --------------------------------------------------------------------
        for i in 0 to 6 loop
            GNSS_data <= std_logic_vector(to_unsigned(i*10, 8));
            GNSS_data_DV <= '1';
            wait for CLK_PERIOD;
            GNSS_data_DV <= '0';
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
        if ALT_request = '0' then
            wait until ALT_request = '1';    
        end if;
        RTC_data_DV <= '0';

        --------------------------------------------------------------------
        -- Provide ALT data (24 bits)
        --------------------------------------------------------------------       
        wait for CLK_period;
        ALT_data <= x"ABCDEF";
        ALT_data_DV <= '1';
        wait for CLK_period;
        if TEMP_request = '0' then
            wait until TEMP_request = '1';    
        end if;
        ALT_data_DV <= '0';
        
        --------------------------------------------------------------------
        -- Provide TEMP data (96 bits)
        --------------------------------------------------------------------        
        wait for CLK_period;
        TEMP_data <= (others => '1');  -- Fill with 1s for testing
        TEMP_data_DV <= '1';
        wait for CLK_PERIOD;
        TEMP_data_DV <= '0';

        --------------------------------------------------------------------
        -- Wait for HK_packet_DV high
        --------------------------------------------------------------------
        wait until HK_packet_DV = '1';
        -- Decode HK_packet into fields
        v_ID   := HK_packet(199 downto 198);
        v_RTC  := HK_packet(197 downto 181);
        v_GNSS := HK_packet(180 downto 126);
        v_TEMP := HK_packet(125 downto 30);
        v_ALT  := HK_packet(29 downto 6);
        v_pad  := HK_packet(5 downto 0);

        -- Report decoded values
        report "================== HK PACKET DECODED ==================";
        report "ID     = " & to_hstring(v_ID);
        report "RTC    = " & to_hstring(v_RTC);
        report "GNSS   = " & to_hstring(v_GNSS);
        report "TEMP   = " & to_hstring(v_TEMP(31 downto 0)) & " ... (truncated)";
        report "ALT    = " & to_hstring(v_ALT);
        report "PAD    = " & to_hstring(v_PAD);
        report "======================================================";
        --------------------------------------------------------------------
        -- Simulate packet acknowledgment
        --------------------------------------------------------------------
        HK_packet_got <= '1';
        wait for 2*CLK_PERIOD;
        HK_packet_got <= '0';

        --------------------------------------------------------------------
        -- Finish simulation
        --------------------------------------------------------------------
        wait for 20*CLK_PERIOD;
        report "Simulation completed successfully.";
        wait;
    end process;

end tb;
