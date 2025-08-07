--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Thu Aug  7 12:01:21 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target SD_init_test.bd
--Design      : SD_init_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_init_test is
  port (
    CS : out STD_LOGIC;
    MISO : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SD_init_test : entity is "SD_init_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SD_init_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SD_init_test : entity is "SD_init_test.hwdef";
end SD_init_test;

architecture STRUCTURE of SD_init_test is
  component SD_init_test_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component SD_init_test_UART_TXmod_0_0;
  component SD_init_test_SD_init_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    cs : out STD_LOGIC;
    done : out STD_LOGIC;
    test_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_DV : out STD_LOGIC;
    test_give_response : out STD_LOGIC
  );
  end component SD_init_test_SD_init_0_1;
  signal SD_init_0_test_DV : STD_LOGIC;
  signal SD_init_0_test_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_SD_init_0_done_UNCONNECTED : STD_LOGIC;
  signal NLW_SD_init_0_test_give_response_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
begin
SD_init_0: component SD_init_test_SD_init_0_1
     port map (
      clk => sysclk,
      cs => CS,
      done => NLW_SD_init_0_done_UNCONNECTED,
      miso => MISO,
      mosi => MOSI,
      rst => btn0,
      sck => SCLK,
      test_DV => SD_init_0_test_DV,
      test_byte(7 downto 0) => SD_init_0_test_byte(7 downto 0),
      test_give_response => NLW_SD_init_0_test_give_response_UNCONNECTED
    );
UART_TXmod_0: component SD_init_test_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => SD_init_0_test_byte(7 downto 0),
      i_TX_DV => SD_init_0_test_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
end STRUCTURE;
