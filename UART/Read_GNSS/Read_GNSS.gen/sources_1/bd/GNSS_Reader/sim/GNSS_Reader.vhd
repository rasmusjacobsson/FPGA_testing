--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 11:09:19 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target GNSS_Reader.bd
--Design      : GNSS_Reader
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of GNSS_Reader : entity is "GNSS_Reader,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=GNSS_Reader,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of GNSS_Reader : entity is "GNSS_Reader.hwdef";
end GNSS_Reader;

architecture STRUCTURE of GNSS_Reader is
  component GNSS_Reader_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component GNSS_Reader_UART_TXmod_0_0;
  component GNSS_Reader_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component GNSS_Reader_UART_RXmod_0_0;
  component GNSS_Reader_UART_TXmod_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component GNSS_Reader_UART_TXmod_1_0;
  component GNSS_Reader_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component GNSS_Reader_Switchmod_0_0;
  signal UART_RXmod_0_o_RX_DV : STD_LOGIC;
  signal UART_RXmod_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED : STD_LOGIC;
begin
Switchmod_0: component GNSS_Reader_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => GNSS_EN,
      sysclk => sysclk
    );
UART_RXmod_0: component GNSS_Reader_UART_RXmod_0_0
     port map (
      i_RX_Serial => GNSS_TX,
      o_RX_DV => UART_RXmod_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component GNSS_Reader_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => B"00000000",
      i_TX_DV => '0',
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => GNSS_RX,
      sysclk => sysclk
    );
UART_TXmod_1: component GNSS_Reader_UART_TXmod_1_0
     port map (
      i_TX_Byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      i_TX_DV => UART_RXmod_0_o_RX_DV,
      o_TX_Active => NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
end STRUCTURE;
