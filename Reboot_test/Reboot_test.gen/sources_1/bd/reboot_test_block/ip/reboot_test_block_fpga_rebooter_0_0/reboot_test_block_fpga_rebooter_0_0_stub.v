// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Aug  7 19:06:55 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/GLITCH-Software/FPGA/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_stub.v
// Design      : reboot_test_block_fpga_rebooter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{}" *) (* core_generation_info = "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fpga_rebooter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "fpga_rebooter,Vivado 2024.2" *) 
module reboot_test_block_fpga_rebooter_0_0(clk, reboot_trigger, led0, led1)
/* synthesis syn_black_box black_box_pad_pin="reboot_trigger,led0,led1" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input reboot_trigger;
  output led0;
  output led1;
endmodule
