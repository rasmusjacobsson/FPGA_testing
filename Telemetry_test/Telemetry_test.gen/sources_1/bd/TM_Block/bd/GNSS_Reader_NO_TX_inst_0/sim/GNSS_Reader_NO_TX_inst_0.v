//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Aug  5 19:39:40 2025
//Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
//Command     : generate_target GNSS_Reader_NO_TX_inst_0.bd
//Design      : GNSS_Reader_NO_TX_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "GNSS_Reader_NO_TX_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=GNSS_Reader_NO_TX_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=D_/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.srcs/sources_1/bd/GNSS_Reader_NO_TX/GNSS_Reader_NO_TX.bd,synth_mode=Hierarchical}" *) (* hw_handoff = "GNSS_Reader_NO_TX_inst_0.hwdef" *) 
module GNSS_Reader_NO_TX_inst_0
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

  GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0 UART_RXmod_0
       (.i_RX_Serial(GNSS_TX),
        .o_RX_DV(o_GNSS_RX_DV),
        .o_RX_byte(o_GNSS_RX_BYTE),
        .sysclk(sysclk));
  GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0 UART_TXmod_0
       (.i_TX_Byte({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_TX_DV(1'b0),
        .o_TX_Serial(GNSS_RX),
        .sysclk(sysclk));
endmodule
