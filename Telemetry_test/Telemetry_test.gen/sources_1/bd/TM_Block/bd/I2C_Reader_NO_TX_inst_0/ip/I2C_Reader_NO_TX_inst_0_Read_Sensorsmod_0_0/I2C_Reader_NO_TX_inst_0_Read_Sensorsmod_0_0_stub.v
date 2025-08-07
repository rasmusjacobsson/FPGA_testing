// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug  5 20:19:07 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/I2C_Reader_NO_TX_inst_0/ip/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_stub.v
// Design      : I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0,Read_Sensorsmod,{}" *) (* core_generation_info = "I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0,Read_Sensorsmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Read_Sensorsmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clockfrequency=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Read_Sensorsmod,Vivado 2024.2" *) 
module I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0(sysclk, reset_n, i_busy, i_data_read, i_TX_done, 
  o_i2c_ena, o_i2c_address, o_i2c_rw, o_i2c_data_wr, o_TX_DV, o_TX_data, led2)
/* synthesis syn_black_box black_box_pad_pin="reset_n,i_busy,i_data_read[7:0],i_TX_done,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],o_TX_DV,o_TX_data[7:0],led2" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output led2;
endmodule
