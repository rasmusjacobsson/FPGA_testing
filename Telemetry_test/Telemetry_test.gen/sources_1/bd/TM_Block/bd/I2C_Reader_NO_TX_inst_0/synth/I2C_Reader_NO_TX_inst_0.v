//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:42 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target I2C_Reader_NO_TX_inst_0.bd
//Design      : I2C_Reader_NO_TX_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "I2C_Reader_NO_TX_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=I2C_Reader_NO_TX_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=D_/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.srcs/sources_1/bd/I2C_Reader_NO_TX/I2C_Reader_NO_TX.bd,synth_mode=Hierarchical}" *) (* hw_handoff = "I2C_Reader_NO_TX_inst_0.hwdef" *) 
module I2C_Reader_NO_TX_inst_0
   (I2C_TX_DV,
    I2C_TX_byte,
    i_TX_Done,
    led2,
    reset_n,
    scl_i,
    scl_o,
    scl_t,
    sda_i,
    sda_o,
    sda_t,
    sysclk);
  output I2C_TX_DV;
  output [7:0]I2C_TX_byte;
  input i_TX_Done;
  output led2;
  input reset_n;
  input scl_i;
  output scl_o;
  output scl_t;
  input sda_i;
  output sda_o;
  output sda_t;
  input sysclk;

  wire I2C_TX_DV;
  wire [7:0]I2C_TX_byte;
  wire I2Cmod_0_busy;
  wire [7:0]I2Cmod_0_data_rd;
  wire [6:0]Read_Sensorsmod_0_o_i2c_address;
  wire [7:0]Read_Sensorsmod_0_o_i2c_data_wr;
  wire Read_Sensorsmod_0_o_i2c_ena;
  wire Read_Sensorsmod_0_o_i2c_rw;
  wire i_TX_Done;
  wire led2;
  wire reset_n;
  wire scl_i;
  wire scl_o;
  wire scl_t;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire sysclk;

  I2C_Reader_NO_TX_inst_0_I2Cmod_0_0 I2Cmod_0
       (.addr(Read_Sensorsmod_0_o_i2c_address),
        .busy(I2Cmod_0_busy),
        .data_rd(I2Cmod_0_data_rd),
        .data_wr(Read_Sensorsmod_0_o_i2c_data_wr),
        .ena(Read_Sensorsmod_0_o_i2c_ena),
        .reset_n(reset_n),
        .rw(Read_Sensorsmod_0_o_i2c_rw),
        .scl_i(scl_i),
        .scl_o(scl_o),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .sysclk(sysclk));
  I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 Read_Sensorsmod_0
       (.i_TX_done(i_TX_Done),
        .i_busy(I2Cmod_0_busy),
        .i_data_read(I2Cmod_0_data_rd),
        .led2(led2),
        .o_TX_DV(I2C_TX_DV),
        .o_TX_data(I2C_TX_byte),
        .o_i2c_address(Read_Sensorsmod_0_o_i2c_address),
        .o_i2c_data_wr(Read_Sensorsmod_0_o_i2c_data_wr),
        .o_i2c_ena(Read_Sensorsmod_0_o_i2c_ena),
        .o_i2c_rw(Read_Sensorsmod_0_o_i2c_rw),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule
