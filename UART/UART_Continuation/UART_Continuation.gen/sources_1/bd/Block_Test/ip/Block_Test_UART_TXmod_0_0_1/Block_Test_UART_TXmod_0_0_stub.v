// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 12:42:30 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Sebastian
//               Magnusson/Documents/GitHub/GLITCH-Software/FPGA/UART/UART_Continuation/UART_Continuation.gen/sources_1/bd/Block_Test/ip/Block_Test_UART_TXmod_0_0_1/Block_Test_UART_TXmod_0_0_stub.v}
// Design      : Block_Test_UART_TXmod_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Block_Test_UART_TXmod_0_0,UART_TXmod,{}" *) (* core_generation_info = "Block_Test_UART_TXmod_0_0,UART_TXmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_TXmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000,Baud_Rate=115200}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "UART_TXmod,Vivado 2024.2" *) 
module Block_Test_UART_TXmod_0_0(sysclk, i_TX_DV, i_TX_Byte, o_TX_Active, 
  o_TX_Serial, o_TX_Done)
/* synthesis syn_black_box black_box_pad_pin="i_TX_DV,i_TX_Byte[7:0],o_TX_Active,o_TX_Serial,o_TX_Done" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  input i_TX_DV;
  input [7:0]i_TX_Byte;
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;
endmodule
