// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug  5 20:19:48 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_MUX_2to1_0_0/TM_Block_MUX_2to1_0_0_stub.v
// Design      : TM_Block_MUX_2to1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "TM_Block_MUX_2to1_0_0,MUX_2to1,{}" *) (* core_generation_info = "TM_Block_MUX_2to1_0_0,MUX_2to1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MUX_2to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "MUX_2to1,Vivado 2024.2" *) 
module TM_Block_MUX_2to1_0_0(sysclk, sel, i_TX_DV_0, i_TX_DV_1, i_TX_Byte_0, 
  i_TX_Byte_1, mux_TX_DV_out, mux_TX_out)
/* synthesis syn_black_box black_box_pad_pin="sel,i_TX_DV_0,i_TX_DV_1,i_TX_Byte_0[7:0],i_TX_Byte_1[7:0],mux_TX_DV_out,mux_TX_out[7:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  input sel;
  input i_TX_DV_0;
  input i_TX_DV_1;
  input [7:0]i_TX_Byte_0;
  input [7:0]i_TX_Byte_1;
  output mux_TX_DV_out;
  output [7:0]mux_TX_out;
endmodule
