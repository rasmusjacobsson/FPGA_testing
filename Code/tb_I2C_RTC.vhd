----------------------------------------------------------------------------------
-- Testbench for I2C_RTC
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_I2C_RTC is
end tb_I2C_RTC;

architecture sim of tb_I2C_RTC is

    -- Component declaration
    component I2C_RTC
        generic(Clockfrequency : integer := 12*1000000);
        port(
            clk           : in  std_logic;
            rst           : in  std_logic;

            i_busy        : in  std_logic;
            i_data_read   : in  std_logic_vector(7 downto 0);

            TX_done       : in  std_logic;
            o_i2c_ena     : out std_logic;
            o_i2c_address : out std_logic_vector(6 downto 0);
            o_i2c_rw      : out std_logic;
            o_i2c_data_wr : out std_logic_vector(7 downto 0);
            RTC_DV        : out std_logic;
            RTC_data      : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals for testbench
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '0';
    signal i_busy        : std_logic := '0';
    signal i_data_read   : std_logic_vector(7 downto 0) := (others => '0');
    signal TX_done       : std_logic := '0';
    signal o_i2c_ena     : std_logic;
    signal o_i2c_address : std_logic_vector(6 downto 0);
    signal o_i2c_rw      : std_logic;
    signal o_i2c_data_wr : std_logic_vector(7 downto 0);
    signal RTC_DV        : std_logic;
    signal RTC_data      : std_logic_vector(7 downto 0);

    constant CLK_PERIOD : time := 83.333 ns;  -- 12 MHz clock

begin

    -- DUT instantiation
    uut: I2C_RTC
        port map (
            clk           => clk,
            rst           => rst,
            i_busy        => i_busy,
            i_data_read   => i_data_read,
            TX_done       => TX_done,
            o_i2c_ena     => o_i2c_ena,
            o_i2c_address => o_i2c_address,
            o_i2c_rw      => o_i2c_rw,
            o_i2c_data_wr => o_i2c_data_wr,
            RTC_DV        => RTC_DV,
            RTC_data      => RTC_data
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset sequence
        rst <= '1';
        wait for 200 ns;
        rst <= '0';
        wait for 500 ns;

        -- Simulate I2C transactions
        -- First transition: module enables I2C write
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';
        
        -- Second thing
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';

        -- Provide fake data for reading (simulate RTC response)
        wait for 5*CLK_PERIOD;
        i_data_read <= x"12";  -- Byte 1
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';

        wait for 5*CLK_PERIOD;
        i_data_read <= x"34";  -- Byte 2
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';

        wait for 5*CLK_PERIOD;
        i_data_read <= x"56";  -- Byte 3
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';

        wait for 5*CLK_PERIOD;
        i_data_read <= x"78";  -- Byte 4
        i_busy <= '1';
        wait for 2*CLK_PERIOD;
        i_busy <= '0';

        -- Simulate TX_done handshakes
        wait for 2 ms;
        TX_done <= '1';
        wait for CLK_PERIOD;
        TX_done <= '0';
        wait for CLK_PERIOD;
        TX_done <= '1';
        wait for CLK_PERIOD;
        TX_done <= '0';
        wait for CLK_PERIOD;
        TX_done <= '1';
        wait for CLK_PERIOD;
        TX_done <= '0';
        wait for CLK_PERIOD;
        TX_done <= '1';
        wait for CLK_PERIOD;
        TX_done <= '0';
        wait for CLK_PERIOD;

        -- End simulation
        wait for 2 us;
        assert false report "Simulation finished" severity failure;
    end process;

end sim;
