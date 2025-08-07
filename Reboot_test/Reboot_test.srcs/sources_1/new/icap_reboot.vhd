----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fpga_rebooter is
    Port (
        clk : in std_logic;
        reboot_trigger : in std_logic;
        led0 : out std_logic;
        led1 : out std_logic
    );
end fpga_rebooter;

architecture Behavioral of fpga_rebooter is

    component ICAPE2
        generic (
            DEVICE_ID : std_logic_vector(31 downto 0) := x"03651093"; -- Artix-7 device ID
            SIM_CFG_FILE_NAME : string := "NONE"
        );
        port (
            CLK   : in  std_logic;
            CSIB  : in  std_logic;
            RDWRB : in  std_logic;
            I     : in  std_logic_vector(31 downto 0);
            O     : out std_logic_vector(31 downto 0)
        );
    end component;

    signal icap_csib  : std_logic := '1';
    signal icap_rdwrb : std_logic := '1';
    signal icap_i     : std_logic_vector(31 downto 0) := (others => '0');
    signal icap_o     : std_logic_vector(31 downto 0);
    signal state      : integer range 0 to 10 := 0;
    signal trigger_d  : std_logic := '0';

begin

    ICAP_INST: ICAPE2
        port map (
            CLK   => clk,
            CSIB  => icap_csib,
            RDWRB => icap_rdwrb,
            I     => icap_i,
            O     => icap_o
        );

    process(clk)
    begin
        if rising_edge(clk) then
            trigger_d <= reboot_trigger;

            case state is
                when 0 =>
                    if reboot_trigger = '1' and trigger_d = '0' then  -- rising edge of trigger
                        state <= 1;
                        led0 <= '1';
                        led1 <= '0';
                    else 
                        led1 <= '1';
                        led0 <= '0';
                    end if;

                when 1 =>  -- Send sync word
                    icap_csib  <= '0';
                    icap_rdwrb <= '0';
                    icap_i     <= x"FFFFFFFF";
                    state      <= 2;
                    led1 <= '1';
                    led0 <= '0';

                when 2 =>
                    icap_i <= x"AA995566"; -- NOOP
                    state  <= 3;
                    led1 <= '0';
                    led0 <= '1';

                when 3 =>
                    icap_i <= x"20000000"; -- Type 1 Write to CMD register
                    state  <= 4;
                    led1 <= '1';
                    led0 <= '0';

                when 4 =>
                    icap_i <= x"0000000F"; -- Command: IPROG (reboot)
                    state  <= 5;
                    led1 <= '0';
                    led0 <= '1';

                when 5 =>
                    icap_i <= x"20000000"; -- NOOP
                    state  <= 6;
                    led1 <= '1';
                    led0 <= '0';

                when 6 =>
                    icap_i <= x"20000000"; -- NOOP (double NOOP just in case)
                    state  <= 7;
                    led1 <= '0';
                    led0 <= '1';

                when 7 =>
                    icap_csib <= '1'; -- Deactivate ICAP
                    state <= 8;
                    led1 <= '1';
                    led0 <= '0';

                when others =>                   
                    -- done
                    led0 <= '0';
                    led1 <= '0';
            end case;
        end if;
    end process;

end Behavioral;

