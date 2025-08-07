// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 08:01:08 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0_stub.v
// Design      : I2C_Test_I2Cmod_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "I2C_Test_I2Cmod_0_0,I2Cmod,{}" *) (* core_generation_info = "I2C_Test_I2Cmod_0_0,I2Cmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2Cmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Sys_Clockfrequency=12000000,Bus_Clockfrequency=400000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "I2Cmod,Vivado 2024.2" *) 
module I2C_Test_I2Cmod_0_0(sda_i, sda_o, sda_t, scl_i, scl_o, scl_t, sysclk, 
  reset_n, ena, addr, rw, data_wr, busy, data_rd, ack_error)
/* synthesis syn_black_box black_box_pad_pin="sda_i,sda_o,sda_t,scl_i,scl_o,scl_t,reset_n,ena,addr[6:0],rw,data_wr[7:0],busy,data_rd[7:0],ack_error" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sda_i;
  output sda_o;
  output sda_t;
  input scl_i;
  output scl_o;
  output scl_t;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input ena;
  input [6:0]addr;
  input rw;
  input [7:0]data_wr;
  output busy;
  output [7:0]data_rd;
  output ack_error;
endmodule
