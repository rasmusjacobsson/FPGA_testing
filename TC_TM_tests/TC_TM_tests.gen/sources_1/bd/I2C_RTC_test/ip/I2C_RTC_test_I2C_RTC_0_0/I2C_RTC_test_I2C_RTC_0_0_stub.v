// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Aug 23 17:18:23 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/FPGA_testing/TC_TM_tests/TC_TM_tests.gen/sources_1/bd/I2C_RTC_test/ip/I2C_RTC_test_I2C_RTC_0_0/I2C_RTC_test_I2C_RTC_0_0_stub.v
// Design      : I2C_RTC_test_I2C_RTC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{}" *) (* core_generation_info = "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_RTC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "I2C_RTC,Vivado 2024.2" *) 
module I2C_RTC_test_I2C_RTC_0_0(clk, rst, i_busy, i_data_read, TX_done, o_i2c_ena, 
  o_i2c_address, o_i2c_rw, o_i2c_data_wr, RTC_DV, RTC_data)
/* synthesis syn_black_box black_box_pad_pin="rst,i_busy,i_data_read[7:0],TX_done,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],RTC_DV,RTC_data[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_busy;
  input [7:0]i_data_read;
  input TX_done;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output RTC_DV;
  output [7:0]RTC_data;
endmodule
