library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_SD_init is
end tb_SD_init;

architecture behavior of tb_SD_init is

    signal clk       : std_logic := '0';
    signal rst       : std_logic := '1';
    signal sck       : std_logic;
    signal mosi      : std_logic;
    signal miso      : std_logic := '1'; -- default idle state
    signal cs        : std_logic;
    signal done      : std_logic;
    signal test_byte : std_logic_vector(7 downto 0);
    signal test_DV   : std_logic;
    signal test_give_response : std_logic;

    constant clk_period : time := 10 ns;

    component SD_init is
        Port ( 
            clk : in std_logic;
            rst : in std_logic;
            sck : out std_logic;
            mosi : out std_logic;
            miso : in std_logic;
            cs : out std_logic;
            done : out std_logic;
            test_byte : out std_logic_vector(7 downto 0);
            test_DV : out std_logic;
            test_give_response : out std_logic
        );
    end component;

begin

    -- DUT instantiation
    uut: SD_init
        port map (
            clk => clk,
            rst => rst,
            sck => sck,
            mosi => mosi,
            miso => miso,
            cs => cs,
            done => done,
            test_byte => test_byte,
            test_DV => test_DV,
            test_give_response => test_give_response
        );

    -- Clock process
    clk_process : process
    begin
        while now < 5 ms loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus : process
        procedure send_response(resp : std_logic_vector(7 downto 0)) is
        begin
            -- Each bit is read LSB to MSB on falling edges of sck
            for i in 7 downto 0 loop
                wait until falling_edge(sck);
                miso <= resp(i);
            end loop;
        end procedure;

    begin
        wait for 100 ns;
        rst <= '0'; -- Release reset

        -- === CMD0 expected ===
        for i in 0 to 100 loop
            wait until test_give_response = '1';
            report "Response after CMD0: " & integer'image(to_integer(unsigned(test_byte)));
            send_response(x"FF");
        end loop;
        
        wait until test_give_response = '1';
        report "Response after CMD8: " & integer'image(to_integer(unsigned(test_byte)));
        send_response(x"01");

        wait until test_give_response = '1';
        report "Response after CMD55: " & integer'image(to_integer(unsigned(test_byte)));
        send_response(x"01");

        wait until test_give_response = '1';
        report "Response after ACMD41: " & integer'image(to_integer(unsigned(test_byte)));
        send_response(x"00");

        wait until done = '1';
        report "Initialization Done!";

        wait;
    end process;

end behavior;
