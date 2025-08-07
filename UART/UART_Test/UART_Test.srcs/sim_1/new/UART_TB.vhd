----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_TB is
end UART_TB;

architecture sim of UART_TB is

  component UART_TXmod is
    generic(Clockfrequency : integer := 12*1000000; -- 12 MHz
            Baud_Rate      : integer := 115200);
    port(sysclk      : in  std_logic;
         i_TX_DV     : in  std_logic;
         i_TX_Byte   : in  std_logic_vector(7 downto 0);
         o_TX_Active : out std_logic;
         o_TX_Serial : out std_logic;
         o_TX_Done   : out std_logic);
  end component UART_TXmod;
 
  component UART_RXmod is
    generic(Clockfrequency : integer := 12*1000000; -- 12 MHz
          Baud_Rate      : integer := 115200);
    Port(sysclk      : in  std_logic;
         i_RX_Serial : in  std_logic;
         o_RX_DV     : out std_logic;
         o_RX_byte   : out std_logic_vector(7 downto 0));
  end component UART_RXmod;
  
  -- Test Bench uses a 12 MHz Clock
  -- Want to interface to 115200 baud UART
  -- 12000000 / 115200 = 104 Clocks Per Bit.
  constant Clockfrequency : integer := 12*1000000; -- 12 MHz
  constant Baud_Rate      : integer := 115000;
  constant c_CLKS_PER_BIT : integer := 104;
 
  constant c_BIT_PERIOD : time := 8680 ns; -- Comes from baud rate = 115200
   
  signal r_CLOCK     : std_logic                    := '0';
  signal r_TX_DV     : std_logic                    := '0';
  signal r_TX_BYTE   : std_logic_vector(7 downto 0) := (others => '0');
  signal w_TX_SERIAL : std_logic;
  signal w_TX_DONE   : std_logic;
  signal w_RX_DV     : std_logic;
  signal w_RX_BYTE   : std_logic_vector(7 downto 0);
  signal r_RX_SERIAL : std_logic := '1';
  
    -- Low-level byte-write
  procedure UART_WRITE_BYTE (
    i_data_in       : in  std_logic_vector(7 downto 0);
    signal o_serial : out std_logic) is
  begin
 
    -- Send Start Bit
    o_serial <= '0';
    wait for c_BIT_PERIOD;
 
    -- Send Data Byte
    for ii in 0 to 7 loop
      o_serial <= i_data_in(ii);
      wait for c_BIT_PERIOD;
    end loop;  -- ii
 
    -- Send Stop Bit
    o_serial <= '1';
    wait for c_BIT_PERIOD;
    end UART_WRITE_BYTE;

begin

-- Instantiate UART transmitter 
UART_TXmod_INST : UART_TXmod 
  generic map(Clockfrequency => Clockfrequency,
              Baud_Rate      => Baud_Rate)
  port map(sysclk      => r_CLOCK,
           i_tx_dv     => r_TX_DV,
           i_tx_byte   => r_TX_BYTE,
           o_tx_active => open,
           o_tx_serial => w_TX_SERIAL,
           o_tx_done   => w_TX_DONE);
 
  -- Instantiate UART Receiver
  UART_RXmod_INST : UART_RXmod
    generic map(Clockfrequency => Clockfrequency,
                Baud_Rate      => Baud_Rate)
    port map(sysclk       => r_CLOCK,
             i_rx_serial => r_RX_SERIAL,
             o_rx_dv     => w_RX_DV,
             o_rx_byte   => w_RX_BYTE);
 
  r_CLOCK <= not r_CLOCK after 41.67 ns; -- 12 MHz Clk (kinda)
  
  process is
  begin
 
    -- Tell the UART to send a command.
    wait until rising_edge(r_CLOCK);
    wait until rising_edge(r_CLOCK);
    r_TX_DV   <= '1';
    r_TX_BYTE <= X"AB";
    wait until rising_edge(r_CLOCK);
    r_TX_DV   <= '0';
    wait until w_TX_DONE = '1';
 
     
    -- Send a command to the UART
    wait until rising_edge(r_CLOCK);
    UART_WRITE_BYTE(X"3F", r_RX_SERIAL);
    wait until rising_edge(r_CLOCK);
 
    -- Check that the correct command was received
    if w_RX_BYTE = X"3F" then
      report "Test Passed - Correct Byte Received" severity note;
    else
      report "Test Failed - Incorrect Byte Received" severity note;
    end if;
 
    assert false report "Tests Complete" severity failure;
     
  end process;
end sim;
