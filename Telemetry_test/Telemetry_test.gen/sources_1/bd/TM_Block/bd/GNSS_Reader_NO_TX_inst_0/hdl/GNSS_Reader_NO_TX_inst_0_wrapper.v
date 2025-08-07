//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:40 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target GNSS_Reader_NO_TX_inst_0_wrapper.bd
//Design      : GNSS_Reader_NO_TX_inst_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module GNSS_Reader_NO_TX_inst_0_wrapper
   (GNSS_RX,
    GNSS_TX,
    o_GNSS_RX_BYTE,
    o_GNSS_RX_DV,
    sysclk);
  output GNSS_RX;
  input GNSS_TX;
  output [7:0]o_GNSS_RX_BYTE;
  output o_GNSS_RX_DV;
  input sysclk;

  wire GNSS_RX;
  wire GNSS_TX;
  wire [7:0]o_GNSS_RX_BYTE;
  wire o_GNSS_RX_DV;
  wire sysclk;

  GNSS_Reader_NO_TX_inst_0 GNSS_Reader_NO_TX_inst_0_i
       (.GNSS_RX(GNSS_RX),
        .GNSS_TX(GNSS_TX),
        .o_GNSS_RX_BYTE(o_GNSS_RX_BYTE),
        .o_GNSS_RX_DV(o_GNSS_RX_DV),
        .sysclk(sysclk));
endmodule
