--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 16:44:39 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target Block_Test.bd
--Design      : Block_Test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Test is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of Block_Test : entity is "Block_Test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of Block_Test : entity is "Block_Test.hwdef";
end Block_Test;

architecture STRUCTURE of Block_Test is
  component Block_Test_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Block_Test_UART_RXmod_0_0;
  component Block_Test_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Block_Test_UART_TXmod_0_0;
  component Block_Test_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component Block_Test_Switchmod_0_0;
  component Block_Test_UART_TXmod_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Block_Test_UART_TXmod_1_0;
  component Block_Test_UART_TXmod_2_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Block_Test_UART_TXmod_2_0;
  component Block_Test_UART_RXmod_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Block_Test_UART_RXmod_1_0;
  component Block_Test_MUX_2to1_0_4 is
  port (
    sysclk : in STD_LOGIC;
    sel : in STD_LOGIC;
    i_TX_DV_0 : in STD_LOGIC;
    i_TX_DV_1 : in STD_LOGIC;
    i_TX_Byte_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Byte_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mux_TX_DV_out : out STD_LOGIC;
    mux_TX_signal_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Block_Test_MUX_2to1_0_4;
  signal NLW_MUX_2to1_0_mux_TX_DV_out_UNCONNECTED : STD_LOGIC;
  signal NLW_MUX_2to1_0_mux_TX_signal_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_RXmod_0_o_RX_DV_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_RXmod_0_o_RX_byte_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_RXmod_1_o_RX_DV_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_RXmod_1_o_RX_byte_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Serial_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_2_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_2_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_2_o_TX_Serial_UNCONNECTED : STD_LOGIC;
begin
MUX_2to1_0: component Block_Test_MUX_2to1_0_4
     port map (
      i_TX_Byte_0(7 downto 0) => B"00000000",
      i_TX_Byte_1(7 downto 0) => B"00000000",
      i_TX_DV_0 => '0',
      i_TX_DV_1 => '0',
      mux_TX_DV_out => NLW_MUX_2to1_0_mux_TX_DV_out_UNCONNECTED,
      mux_TX_signal_out(7 downto 0) => NLW_MUX_2to1_0_mux_TX_signal_out_UNCONNECTED(7 downto 0),
      sel => btn0,
      sysclk => sysclk
    );
Switchmod_0: component Block_Test_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led1,
      o_signal => GNSS_EN,
      sysclk => sysclk
    );
UART_RXmod_0: component Block_Test_UART_RXmod_0_0
     port map (
      i_RX_Serial => uart_txd_in,
      o_RX_DV => NLW_UART_RXmod_0_o_RX_DV_UNCONNECTED,
      o_RX_byte(7 downto 0) => NLW_UART_RXmod_0_o_RX_byte_UNCONNECTED(7 downto 0),
      sysclk => sysclk
    );
UART_RXmod_1: component Block_Test_UART_RXmod_1_0
     port map (
      i_RX_Serial => GNSS_TX,
      o_RX_DV => NLW_UART_RXmod_1_o_RX_DV_UNCONNECTED,
      o_RX_byte(7 downto 0) => NLW_UART_RXmod_1_o_RX_byte_UNCONNECTED(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component Block_Test_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => B"00000000",
      i_TX_DV => '0',
      o_TX_Active => led0,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => NLW_UART_TXmod_0_o_TX_Serial_UNCONNECTED,
      sysclk => sysclk
    );
UART_TXmod_1: component Block_Test_UART_TXmod_1_0
     port map (
      i_TX_Byte(7 downto 0) => B"00000000",
      i_TX_DV => '0',
      o_TX_Active => NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED,
      o_TX_Serial => GNSS_RX,
      sysclk => sysclk
    );
UART_TXmod_2: component Block_Test_UART_TXmod_2_0
     port map (
      i_TX_Byte(7 downto 0) => B"00000000",
      i_TX_DV => '0',
      o_TX_Active => NLW_UART_TXmod_2_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_2_o_TX_Done_UNCONNECTED,
      o_TX_Serial => NLW_UART_TXmod_2_o_TX_Serial_UNCONNECTED,
      sysclk => sysclk
    );
end STRUCTURE;
