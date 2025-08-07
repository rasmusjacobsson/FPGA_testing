//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:39 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target TM_Block.bd
//Design      : TM_Block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "TM_Block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TM_Block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=2,bdsource=USER,synth_mode=Hierarchical}" *) (* hw_handoff = "TM_Block.hwdef" *) 
module TM_Block
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
  wire [7:0]GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE;
  wire GNSS_Reader_NO_TX_0_o_GNSS_RX_DV;
  wire GNSS_TX;
  wire I2C_Reader_NO_TX_0_I2C_TX_DV;
  wire [7:0]I2C_Reader_NO_TX_0_I2C_TX_byte;
  wire MUX_2to1_0_mux_TX_DV_out;
  wire [7:0]MUX_2to1_0_mux_TX_out;
  wire btn0;
  wire i_TX_Done_1;
  wire led0;
  wire led1;
  wire [0:0]reset_n_1;
  wire scl_i;
  wire scl_o;
  wire scl_t;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire sysclk;
  wire uart_rxd_out;

  GNSS_Reader_NO_TX_inst_0 GNSS_Reader_NO_TX_0
       (.GNSS_RX(GNSS_RX),
        .GNSS_TX(GNSS_TX),
        .o_GNSS_RX_BYTE(GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE),
        .o_GNSS_RX_DV(GNSS_Reader_NO_TX_0_o_GNSS_RX_DV),
        .sysclk(sysclk));
  I2C_Reader_NO_TX_inst_0 I2C_Reader_NO_TX_0
       (.I2C_TX_DV(I2C_Reader_NO_TX_0_I2C_TX_DV),
        .I2C_TX_byte(I2C_Reader_NO_TX_0_I2C_TX_byte),
        .i_TX_Done(i_TX_Done_1),
        .led2(led1),
        .reset_n(reset_n_1),
        .scl_i(scl_i),
        .scl_o(scl_o),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .sysclk(sysclk));
  TM_Block_MUX_2to1_0_0 MUX_2to1_0
       (.i_TX_Byte_0(I2C_Reader_NO_TX_0_I2C_TX_byte),
        .i_TX_Byte_1(GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE),
        .i_TX_DV_0(I2C_Reader_NO_TX_0_I2C_TX_DV),
        .i_TX_DV_1(GNSS_Reader_NO_TX_0_o_GNSS_RX_DV),
        .mux_TX_DV_out(MUX_2to1_0_mux_TX_DV_out),
        .mux_TX_out(MUX_2to1_0_mux_TX_out),
        .sel(btn0),
        .sysclk(sysclk));
  TM_Block_Switchmod_0_0 Switchmod_0
       (.i_signal(btn0),
        .led0(led0),
        .o_signal(GNSS_EN),
        .sysclk(sysclk));
  TM_Block_UART_TXmod_0_0 UART_TXmod_0
       (.i_TX_Byte(MUX_2to1_0_mux_TX_out),
        .i_TX_DV(MUX_2to1_0_mux_TX_DV_out),
        .o_TX_Done(i_TX_Done_1),
        .o_TX_Serial(uart_rxd_out),
        .sysclk(sysclk));
  TM_Block_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(btn0),
        .Res(reset_n_1));
endmodule
