----------------------------------------------------------------------------------
-- Company:  GLITH
-- Engineer: SEB, Rasmus
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity I2C_full_sensor_data_fetcher is
    generic(
        Clockfrequency : integer := 12 * 1000000  -- 12 MHz
    );
    Port(
        clk             : in  std_logic;
        rst             : in  std_logic;
        i_busy          : in  std_logic;
        i_data_read     : in  std_logic_vector(7 downto 0);
        i_TX_done_HK    : in  std_logic;
        i_TX_done_BF    : in  std_logic;
        i_TX_done_RAD   : in  std_logic;
        i_HK_RTC_request  : in std_logic;
        i_BF_RTC_request  : in std_logic;
        i_RAD_RTC_request : in std_logic;
        i_HK_ALT_request  : in std_logic;
        i_HK_TEMP_request : in std_logic;

        o_i2c_ena      : out std_logic;
        o_i2c_address  : out std_logic_vector(6 downto 0);
        o_i2c_rw       : out std_logic;
        o_i2c_data_wr  : out std_logic_vector(7 downto 0);
        o_TX_DV_HK     : out std_logic;
        o_TX_DV_BF     : out std_logic;
        o_TX_DV_RAD    : out std_logic;
        o_TX_RTC_data  : out std_logic_vector(16 downto 0);
        o_TX_ALT_data  : out std_logic_vector(23 downto 0);
        o_TX_TEMP_data : out std_logic_vector(95 downto 0);
        led2           : out std_logic
    );
end I2C_full_sensor_data_fetcher;

architecture rtl of I2C_full_sensor_data_fetcher is

    type SM_Main is (
        IDLE, TEMP, SEND_TEMP, PREP_ALT, ALT_READ,
        ALT, SEND_ALT, RTC, SEND_RTC, CLEANUP
    );
    signal state : SM_Main := CLEANUP;

    type Who_requested_rtc is (HK, BF, RAD);
    signal who_requested : Who_requested_rtc;

    signal busy_prev   : std_logic;
    signal temp_data   : std_logic_vector(31 downto 0);
    signal alt_data    : std_logic_vector(23 downto 0);
    signal rtc_data    : std_logic_vector(16 downto 0);

begin

    process(clk)
        variable busy_cnt : integer range 0 to 5 := 0;
        variable conv_cnt : integer range 0 to Clockfrequency/100 := 0; -- Wait 10 ms for pressure conversion
    begin
        if rising_edge(clk) then
            if rst = '1' then
                busy_cnt      := 0;
                conv_cnt      := 0;
                temp_data     <= (others => '0');
                alt_data      <= (others => '0');
                rtc_data      <= (others => '0');
                o_i2c_ena     <= '0';
                o_TX_DV_HK    <= '0';
                o_TX_DV_BF    <= '0';
                o_TX_DV_RAD   <= '0';
                busy_prev     <= '0';
                state         <= IDLE;
                led2          <= '0';

            else
                case state is

                    -- =========================================================
                    -- IDLE STATE
                    -- =========================================================
                    when IDLE =>
                        o_TX_DV_HK  <= '0';
                        o_TX_DV_BF  <= '0';
                        o_TX_DV_RAD <= '0';

                        if i_HK_RTC_request = '1' or i_RAD_RTC_request = '1' or i_BF_RTC_request = '1' then
                            if i_BF_RTC_request = '1' then
                                who_requested <= BF;
                            elsif i_RAD_RTC_request = '1' then
                                who_requested <= RAD;
                            else 
                                who_requested <= HK;
                            end if;
                            state <= RTC;

                        elsif i_HK_ALT_request = '1' then
                            state <= PREP_ALT;
                        elsif i_HK_TEMP_request = '1' then
                            state <= TEMP;
                        else
                            state <= IDLE;
                        end if;

                    -- =========================================================
                    -- TEMP SENSOR DATA FETCH
                    -- =========================================================
                    when TEMP =>
                        busy_prev <= i_busy;
                        if busy_prev = '0' and i_busy = '1' then
                            busy_cnt := busy_cnt + 1;
                        end if;

                        case busy_cnt is
                            when 0 =>
                                o_i2c_ena   <= '1';
                                o_i2c_address <= "1000000";
                                o_i2c_rw    <= '0';
                                o_i2c_data_wr <= "11100011";
                            when 1 =>
                                o_i2c_rw    <= '1';
                            when 2 =>
                                if i_busy = '0' then
                                    temp_data(31 downto 24) <= i_data_read;
                                end if;
                            when 3 =>
                                if i_busy = '0' then
                                    temp_data(23 downto 16) <= i_data_read;
                                end if;
                            when 4 =>
                                if i_busy = '0' then
                                    temp_data(15 downto 8) <= i_data_read;
                                end if;
                            when 5 =>
                                o_i2c_ena <= '0';
                                if i_busy = '0' then
                                    busy_cnt := 0;
                                    temp_data(7 downto 0) <= i_data_read;
                                    state <= SEND_TEMP;
                                end if;
                            when others =>
                                null;
                        end case;

                    -- =========================================================
                    -- SEND TEMP DATA
                    -- =========================================================
                    when SEND_TEMP =>
                        o_TX_DV_HK <= '1';
                        o_TX_TEMP_data <= temp_data & temp_data & temp_data; -- Temp replicated 3x

                        if i_TX_done_HK = '1' then
                            state <= CLEANUP;
                        else
                            state <= SEND_TEMP;
                        end if;

                    -- =========================================================
                    -- PREPARE ALT SENSOR MEASUREMENT
                    -- =========================================================
                    when PREP_ALT =>
                        busy_prev <= i_busy;
                        if busy_prev = '0' and i_busy = '1' then
                            busy_cnt := busy_cnt + 1;
                        end if;

                        case busy_cnt is
                            when 0 =>
                                o_i2c_ena     <= '1';
                                o_i2c_address <= "1110110";
                                o_i2c_rw      <= '0';
                                o_i2c_data_wr <= "01001000";
                            when 1 =>
                                if conv_cnt < Clockfrequency/100 then
                                    conv_cnt := conv_cnt + 1;
                                else
                                    conv_cnt := 0;
                                    if i_busy = '0' then
                                        o_i2c_ena <= '0';
                                        busy_cnt := 0;
                                        state <= ALT_READ;
                                    end if;
                                end if;
                            when others =>
                                null;
                        end case;
                    
                    -- =========================================================
                    -- READ ALT PRESSURE MEASUREMENT
                    -- =========================================================
                    when ALT_READ =>
                        busy_prev <= i_busy;
                        if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
                            busy_cnt := busy_cnt + 1;
                        end if;
                        -- Case for which command we are currently on according to i2c protocol
                        case busy_cnt is
                            when 0 =>                                    -- No command latched in i2c master
                                o_i2c_ena     <= '1';                        -- Initiate transaction
                                o_i2c_address <= "1110110";                  -- Altitude sensor i2c address
                                o_i2c_rw       <= '0';                       -- Write mode
                                o_i2c_data_wr <= "00000000";                 -- Command to read pressure data
                            when 1 =>                                    -- 1st busy high: command 1 latched
                                -- o_i2c_ena <= '0'; REMOVED                          
                                if(i_busy = '0') then                      -- Read pressure command complete
                                    o_i2c_ena <= '0'; -- NEW Deassert enable to stop transaction
                                    busy_cnt := 0;
                                    state <= ALT;
                                end if;
                            when OTHERS =>
                                NULL;
                        end case;
                        
                    -- =========================================================
                    -- READ ALT SENSOR MEASUREMENT
                    -- =========================================================    
                    when ALT =>
                        busy_prev <= i_busy;
                        if(busy_prev = '0' and i_busy = '1') then -- Busy just went high
                            busy_cnt := busy_cnt + 1;
                        end if;
                        -- Case for which command we are currently on according to i2c protocol
                        case busy_cnt is
                            when 0 =>                                    -- No command latched in i2c master
                                o_i2c_ena     <= '1';                        -- Initiate transaction
                                o_i2c_address <= "1110110";                  -- Altimeter sensor i2c address
                                o_i2c_rw      <= '1';                        -- Read mode
                            when 1 =>                                    -- 1st command latched in, safe to issue command 2
                                if(i_busy = '0') then                        -- 1st byte of data ready
                                    alt_data(23 downto 16) <= i_data_read;     -- Save first byte
                                end if;
                            when 2 =>                                    -- 2nd command latched in, 
                                if(i_busy = '0') then                        -- 2nd byte of data ready
                                    alt_data(15 downto 8) <= i_data_read;      -- Save second byte
                                end if;
                            when 3 =>                                    -- 3rd command latched in, 
                                o_i2c_ena <= '0';                            -- Deassert enable to stop transaction 
                                if(i_busy = '0') then                        -- 3rd byte of data ready
                                    busy_cnt := 0;                             -- Reset busy counter
                                    alt_data(7 downto 0) <= i_data_read;       -- Save last byte 
                                    
                                    state <= SEND_ALT;                         -- Move SEND_ALT
                                end if;
                            when OTHERS =>
                                NULL;
                        end case;
                    -- =========================================================
                    -- SEND ALT DATA
                    -- =========================================================
                    when SEND_ALT =>
                        o_TX_DV_HK <= '1';
                        o_TX_ALT_data <= alt_data;

                        if i_TX_done_HK = '1' then
                            state <= CLEANUP;
                        else
                            state <= SEND_ALT;
                        end if;

                    -- =========================================================
                    -- RTC DATA FETCH
                    -- =========================================================
                    when RTC =>
                        busy_prev <= i_busy;
                        if busy_prev = '0' and i_busy = '1' then
                            busy_cnt := busy_cnt + 1;
                        end if;

                        case busy_cnt is
                            when 0 =>
                                o_i2c_ena     <= '1';
                                o_i2c_address <= "1101000";
                                o_i2c_rw      <= '0';
                                o_i2c_data_wr <= "00000000";
                            when 1 =>
                                o_i2c_rw <= '1';
                            when 2 =>
                                if i_busy = '0' then
                                    rtc_data(16 downto 9) <= i_data_read;
                                end if;
                            when 3 =>
                                if i_busy = '0' then
                                    rtc_data(8 downto 1) <= i_data_read;
                                end if;
                            when 4 =>
                                o_i2c_ena <= '0';
                                if i_busy = '0' then
                                    busy_cnt := 0;
                                    rtc_data(0) <= i_data_read(7);
                                    state <= SEND_RTC;
                                end if;
                            when others =>
                                null;
                        end case;

                    -- =========================================================
                    -- SEND RTC DATA
                    -- =========================================================
                    when SEND_RTC =>
                        case who_requested is
                            when HK  => o_TX_DV_HK  <= '1';
                            when RAD => o_TX_DV_RAD <= '1';
                            when BF  => o_TX_DV_BF  <= '1';
                        end case;

                        o_TX_RTC_data <= rtc_data;

                        if i_TX_done_HK = '1' or i_TX_done_RAD = '1' or i_TX_done_BF = '1' then
                            state <= CLEANUP;
                        else
                            state <= SEND_RTC;
                        end if;
                    
                    when CLEANUP =>
                        busy_cnt      := 0;
                        conv_cnt      := 0;
                        temp_data     <= (others => '0');
                        alt_data      <= (others => '0');
                        rtc_data      <= (others => '0');
                        o_TX_RTC_data <= (others => '0');
                        o_TX_ALT_data <= (others => '0');
                        o_TX_TEMP_data <= (others => '0');
                        o_i2c_ena     <= '0';
                        o_TX_DV_HK    <= '0';
                        o_TX_DV_BF    <= '0';
                        o_TX_DV_RAD   <= '0';
                        busy_prev     <= '0';
                        state         <= IDLE;
                        led2          <= '0';
                            
                    when others =>
                        state <= CLEANUP;
                end case;
            end if;
        end if;
    end process;

end rtl;
