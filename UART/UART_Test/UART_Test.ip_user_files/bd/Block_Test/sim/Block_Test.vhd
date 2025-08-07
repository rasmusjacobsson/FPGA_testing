--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Apr  1 11:39:00 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
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
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_Test : entity is "Block_Test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Block_Test : entity is "Block_Test.hwdef";
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
  signal UART_RXmod_0_o_RX_DV : STD_LOGIC;
  signal UART_RXmod_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
UART_RXmod_0: component Block_Test_UART_RXmod_0_0
     port map (
      i_RX_Serial => uart_txd_in,
      o_RX_DV => UART_RXmod_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component Block_Test_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      i_TX_DV => UART_RXmod_0_o_RX_DV,
      o_TX_Active => led0,
      o_TX_Done => led1,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
end STRUCTURE;
