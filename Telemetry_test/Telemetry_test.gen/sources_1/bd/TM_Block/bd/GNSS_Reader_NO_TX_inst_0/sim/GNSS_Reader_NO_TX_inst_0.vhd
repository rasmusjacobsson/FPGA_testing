--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:16 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target GNSS_Reader_NO_TX_inst_0.bd
--Design      : GNSS_Reader_NO_TX_inst_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_NO_TX_inst_0 is
  port (
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    o_GNSS_RX_BYTE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_GNSS_RX_DV : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of GNSS_Reader_NO_TX_inst_0 : entity is "GNSS_Reader_NO_TX_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=GNSS_Reader_NO_TX_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=D_/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.srcs/sources_1/bd/GNSS_Reader_NO_TX/GNSS_Reader_NO_TX.bd,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of GNSS_Reader_NO_TX_inst_0 : entity is "GNSS_Reader_NO_TX_inst_0.hwdef";
end GNSS_Reader_NO_TX_inst_0;

architecture STRUCTURE of GNSS_Reader_NO_TX_inst_0 is
  component GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0;
  component GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0;
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
begin
UART_RXmod_0: component GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0
     port map (
      i_RX_Serial => GNSS_TX,
      o_RX_DV => o_GNSS_RX_DV,
      o_RX_byte(7 downto 0) => o_GNSS_RX_BYTE(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => B"00000000",
      i_TX_DV => '0',
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => GNSS_RX,
      sysclk => sysclk
    );
end STRUCTURE;
