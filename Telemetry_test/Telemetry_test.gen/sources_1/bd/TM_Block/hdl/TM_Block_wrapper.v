//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:39 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target TM_Block_wrapper.bd
//Design      : TM_Block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TM_Block_wrapper
   (GNSS_EN,
    GNSS_RX,
    GNSS_TX,
    btn0,
    led0,
    led1,
    scl_i,
    scl_o,
    scl_t,
    sda_i,
    sda_o,
    sda_t,
    sysclk,
    uart_rxd_out);
  output GNSS_EN;
  output GNSS_RX;
  input GNSS_TX;
  input btn0;
  output led0;
  output led1;
  input scl_i;
  output scl_o;
  output scl_t;
  input sda_i;
  output sda_o;
  output sda_t;
  input sysclk;
  output uart_rxd_out;

  wire GNSS_EN;
  wire GNSS_RX;
  wire GNSS_TX;
  wire btn0;
  wire led0;
  wire led1;
  wire scl_i;
  wire scl_o;
  wire scl_t;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire sysclk;
  wire uart_rxd_out;

  TM_Block TM_Block_i
       (.GNSS_EN(GNSS_EN),
        .GNSS_RX(GNSS_RX),
        .GNSS_TX(GNSS_TX),
        .btn0(btn0),
        .led0(led0),
        .led1(led1),
        .scl_i(scl_i),
        .scl_o(scl_o),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .sysclk(sysclk),
        .uart_rxd_out(uart_rxd_out));
endmodule
