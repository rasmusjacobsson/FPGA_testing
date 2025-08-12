// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug 12 19:06:26 2025
// Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/rjaco/Documents/Skolgrejs/FPGA_testing/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_init_test/ip/SD_init_test_SD_init_0_1/SD_init_test_SD_init_0_1_stub.v
// Design      : SD_init_test_SD_init_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "SD_init_test_SD_init_0_1,SD_init,{}" *) (* core_generation_info = "SD_init_test_SD_init_0_1,SD_init,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SD_init,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clockfrequency=12000000,Baud_Rate=400000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "SD_init,Vivado 2024.2" *) 
module SD_init_test_SD_init_0_1(clk, rst, sck, mosi, miso, cs, done, test_byte, test_DV, 
  test_give_response)
/* synthesis syn_black_box black_box_pad_pin="rst,sck,mosi,miso,cs,done,test_byte[7:0],test_DV,test_give_response" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output sck;
  output mosi;
  input miso;
  output cs;
  output done;
  output [7:0]test_byte;
  output test_DV;
  output test_give_response;
endmodule
