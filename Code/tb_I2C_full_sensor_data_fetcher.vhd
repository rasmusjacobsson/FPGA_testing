library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_I2C_full_sensor_data_fetcher is
end tb_I2C_full_sensor_data_fetcher;

architecture tb of tb_I2C_full_sensor_data_fetcher is

    -- DUT generics
    constant CLK_FREQ : integer := 12_000_000;

    -- Signals for DUT ports
    signal clk             : std_logic := '0';
    signal rst             : std_logic := '1';
    signal i_busy          : std_logic := '0';
    signal i_data_read     : std_logic_vector(7 downto 0) := (others => '0');
    signal i_TX_done_HK    : std_logic := '0';
    signal i_TX_done_BF    : std_logic := '0';
    signal i_TX_done_RAD   : std_logic := '0';
    signal i_HK_RTC_request  : std_logic := '0';
    signal i_BF_RTC_request  : std_logic := '0';
    signal i_RAD_RTC_request : std_logic := '0';
    signal i_HK_ALT_request  : std_logic := '0';
    signal i_HK_TEMP_request : std_logic := '0';

    signal o_i2c_ena      : std_logic;
    signal o_i2c_address  : std_logic_vector(6 downto 0);
    signal o_i2c_rw       : std_logic;
    signal o_i2c_data_wr  : std_logic_vector(7 downto 0);
    signal o_TX_DV_HK     : std_logic;
    signal o_TX_DV_BF     : std_logic;
    signal o_TX_DV_RAD    : std_logic;
    signal o_TX_RTC_data  : std_logic_vector(16 downto 0);
    signal o_TX_ALT_data  : std_logic_vector(23 downto 0);
    signal o_TX_TEMP_data : std_logic_vector(95 downto 0);
    signal led2           : std_logic;

    -- Clock period
    constant CLK_PERIOD : time := 83.333 ns; -- 12 MHz

begin

    -- Instantiate DUT
    DUT: entity work.I2C_full_sensor_data_fetcher
        generic map(
            Clockfrequency => CLK_FREQ
        )
        port map(
            clk             => clk,
            rst             => rst,
            i_busy          => i_busy,
            i_data_read     => i_data_read,
            i_TX_done_HK    => i_TX_done_HK,
            i_TX_done_BF    => i_TX_done_BF,
            i_TX_done_RAD   => i_TX_done_RAD,
            i_HK_RTC_request  => i_HK_RTC_request,
            i_BF_RTC_request  => i_BF_RTC_request,
            i_RAD_RTC_request => i_RAD_RTC_request,
            i_HK_ALT_request  => i_HK_ALT_request,
            i_HK_TEMP_request => i_HK_TEMP_request,
            o_i2c_ena      => o_i2c_ena,
            o_i2c_address  => o_i2c_address,
            o_i2c_rw       => o_i2c_rw,
            o_i2c_data_wr  => o_i2c_data_wr,
            o_TX_DV_HK     => o_TX_DV_HK,
            o_TX_DV_BF     => o_TX_DV_BF,
            o_TX_DV_RAD    => o_TX_DV_RAD,
            o_TX_RTC_data  => o_TX_RTC_data,
            o_TX_ALT_data  => o_TX_ALT_data,
            o_TX_TEMP_data => o_TX_TEMP_data,
            led2           => led2
        );

    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Stimulus process
    --------------------------------------------------------------------
    stim_proc : process
    begin
        ----------------------------------------------------------------
        -- Reset
        ----------------------------------------------------------------
        rst <= '1';
        wait for 200 ns;
        rst <= '0';
        wait for 200 ns;

        ----------------------------------------------------------------
        -- Test Case 1: Temperature Request
        ----------------------------------------------------------------
        report "=== TEST CASE 1: TEMP REQUEST ===";
        i_HK_TEMP_request <= '1';
        wait for CLK_PERIOD;
        i_HK_TEMP_request <= '0';

        -- Simulate I2C busy and data read sequence for 4 bytes
        wait for 2 us;
        i_busy <= '1';
        wait for 500 ns;
        i_busy <= '0';
        wait for 500 ns;     
        
        for i in 0 to 3 loop
            i_busy <= '1';
            wait for 500 ns;
            i_busy <= '0';
            i_data_read <= std_logic_vector(to_unsigned(16#10# + i, 8));
            wait for 500 ns;
        end loop;

        -- Acknowledge TX done
        wait for 1 us;
        i_TX_done_HK <= '1';
        wait for CLK_PERIOD;
        i_TX_done_HK <= '0';

        wait for 3 us;

        ----------------------------------------------------------------
        -- Test Case 2: Altitude Request
        ----------------------------------------------------------------
        report "=== TEST CASE 2: ALT REQUEST ===";
        i_HK_ALT_request <= '1';
        wait for CLK_PERIOD;
        i_HK_ALT_request <= '0';
        
        wait for 2 us;
        i_busy <= '1';
        wait for 500 ns;
        i_busy <= '0';
        wait for 10 ms;  
        i_busy <= '1';
        wait for 500 ns;
        i_busy <= '0';
        wait for 500 ns;  
        
        -- Simulate 3-byte altitude data fetch
        wait for 2 us;
        for i in 0 to 2 loop
            i_busy <= '1';
            wait for 500 ns;
            i_busy <= '0';
            i_data_read <= std_logic_vector(to_unsigned(16#50# + i, 8));
            wait for 500 ns;
        end loop;

        -- Acknowledge TX done
        wait for 1 us;
        i_TX_done_HK <= '1';
        wait for CLK_PERIOD;
        i_TX_done_HK <= '0';

        wait for 3 us;

        ----------------------------------------------------------------
        -- Test Case 3: RTC Request (BF)
        ----------------------------------------------------------------
        report "=== TEST CASE 3: RTC REQUEST (BF) ===";
        i_BF_RTC_request <= '1';
        wait for CLK_PERIOD;
        i_BF_RTC_request <= '0';

        wait for 2 us;
        i_busy <= '1';
        wait for 500 ns;
        i_busy <= '0';
        wait for 500 ns;     
        
        -- Simulate RTC data read (2 bytes + 1 bit)
        wait for 2 us;
        for i in 0 to 1 loop
            i_busy <= '1';
            wait for 500 ns;
            i_busy <= '0';
            i_data_read <= std_logic_vector(to_unsigned(16#80# + i, 8));
            wait for 500 ns;
        end loop;

        i_busy <= '1';
        wait for 500 ns;
        i_busy <= '0';
        i_data_read <= "10000000"; -- LSB bit = 1

        -- Acknowledge TX done
        wait for 1 us;
        i_TX_done_BF <= '1';
        wait for CLK_PERIOD;
        i_TX_done_BF <= '0';

        ----------------------------------------------------------------
        -- End of simulation
        ----------------------------------------------------------------
        wait for 5 us;
        report "=== END OF SIMULATION ===";
        wait;
    end process;

end tb;
