--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Thu Aug  7 19:05:42 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target reboot_test_block.bd
--Design      : reboot_test_block
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reboot_test_block is
  port (
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of reboot_test_block : entity is "reboot_test_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=reboot_test_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of reboot_test_block : entity is "reboot_test_block.hwdef";
end reboot_test_block;

architecture STRUCTURE of reboot_test_block is
  component reboot_test_block_fpga_rebooter_0_0 is
  port (
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component reboot_test_block_fpga_rebooter_0_0;
  component reboot_test_block_reboot_control_0_0 is
  port (
    clk : in STD_LOGIC;
    TX_DV : out STD_LOGIC;
    TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component reboot_test_block_reboot_control_0_0;
  component reboot_test_block_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component reboot_test_block_UART_TXmod_0_0;
  signal reboot_control_0_DV : STD_LOGIC;
  signal reboot_control_0_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
begin
UART_TXmod_0: component reboot_test_block_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => reboot_control_0_byte(7 downto 0),
      i_TX_DV => reboot_control_0_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
fpga_rebooter_0: component reboot_test_block_fpga_rebooter_0_0
     port map (
      clk => sysclk,
      led0 => led0,
      led1 => led1,
      reboot_trigger => btn0
    );
reboot_control_0: component reboot_test_block_reboot_control_0_0
     port map (
      TX_DV => reboot_control_0_DV,
      TX_byte(7 downto 0) => reboot_control_0_byte(7 downto 0),
      clk => sysclk
    );
end STRUCTURE;
