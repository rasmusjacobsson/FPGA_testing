-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Aug  7 19:06:55 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/GLITCH-Software/FPGA/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_stub.vhdl
-- Design      : reboot_test_block_fpga_rebooter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_test_block_fpga_rebooter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of reboot_test_block_fpga_rebooter_0_0 : entity is "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of reboot_test_block_fpga_rebooter_0_0 : entity is "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fpga_rebooter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of reboot_test_block_fpga_rebooter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of reboot_test_block_fpga_rebooter_0_0 : entity is "module_ref";
end reboot_test_block_fpga_rebooter_0_0;

architecture stub of reboot_test_block_fpga_rebooter_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,reboot_trigger,led0,led1";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "fpga_rebooter,Vivado 2024.2";
begin
end;
