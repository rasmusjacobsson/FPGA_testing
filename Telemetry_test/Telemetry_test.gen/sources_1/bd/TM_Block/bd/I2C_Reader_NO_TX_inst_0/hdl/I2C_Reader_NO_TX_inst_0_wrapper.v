//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:42 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target I2C_Reader_NO_TX_inst_0_wrapper.bd
//Design      : I2C_Reader_NO_TX_inst_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module I2C_Reader_NO_TX_inst_0_wrapper
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

  I2C_Reader_NO_TX_inst_0 I2C_Reader_NO_TX_inst_0_i
       (.I2C_TX_DV(I2C_TX_DV),
        .I2C_TX_byte(I2C_TX_byte),
        .i_TX_Done(i_TX_Done),
        .led2(led2),
        .reset_n(reset_n),
        .scl_i(scl_i),
        .scl_o(scl_o),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .sysclk(sysclk));
endmodule
