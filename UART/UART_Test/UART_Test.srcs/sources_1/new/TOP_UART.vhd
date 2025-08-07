----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TOP_UART is
end TOP_UART;

architecture rtl of TOP_UART is

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
  
begin
  
  
end architecture;