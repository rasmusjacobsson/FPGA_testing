// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug  5 20:19:48 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_MUX_2to1_0_0/TM_Block_MUX_2to1_0_0_sim_netlist.v
// Design      : TM_Block_MUX_2to1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TM_Block_MUX_2to1_0_0,MUX_2to1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "MUX_2to1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module TM_Block_MUX_2to1_0_0
   (sysclk,
    sel,
    i_TX_DV_0,
    i_TX_DV_1,
    i_TX_Byte_0,
    i_TX_Byte_1,
    mux_TX_DV_out,
    mux_TX_out);
  input sysclk;
  input sel;
  input i_TX_DV_0;
  input i_TX_DV_1;
  input [7:0]i_TX_Byte_0;
  input [7:0]i_TX_Byte_1;
  output mux_TX_DV_out;
  output [7:0]mux_TX_out;

  wire [7:0]i_TX_Byte_0;
  wire [7:0]i_TX_Byte_1;
  wire i_TX_DV_0;
  wire i_TX_DV_1;
  wire mux_TX_DV_out;
  wire [7:0]mux_TX_out;
  wire sel;
  wire sysclk;

  TM_Block_MUX_2to1_0_0_MUX_2to1 U0
       (.i_TX_Byte_0(i_TX_Byte_0),
        .i_TX_Byte_1(i_TX_Byte_1),
        .i_TX_DV_0(i_TX_DV_0),
        .i_TX_DV_1(i_TX_DV_1),
        .mux_TX_DV_out(mux_TX_DV_out),
        .mux_TX_out(mux_TX_out),
        .sel(sel),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "MUX_2to1" *) 
module TM_Block_MUX_2to1_0_0_MUX_2to1
   (mux_TX_DV_out,
    mux_TX_out,
    sel,
    sysclk,
    i_TX_DV_0,
    i_TX_DV_1,
    i_TX_Byte_0,
    i_TX_Byte_1);
  output mux_TX_DV_out;
  output [7:0]mux_TX_out;
  input sel;
  input sysclk;
  input i_TX_DV_0;
  input i_TX_DV_1;
  input [7:0]i_TX_Byte_0;
  input [7:0]i_TX_Byte_1;

  wire State;
  wire State_i_1_n_0;
  wire [7:0]i_TX_Byte_0;
  wire [7:0]i_TX_Byte_1;
  wire i_TX_DV_0;
  wire i_TX_DV_1;
  wire mux_TX_DV_out;
  wire mux_TX_DV_out__0_n_0;
  wire [7:0]mux_TX_out;
  wire [7:0]p_0_in;
  wire sel;
  wire sel_prev;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    State_i_1
       (.I0(sel),
        .I1(sel_prev),
        .I2(State),
        .O(State_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    State_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(State_i_1_n_0),
        .Q(State),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDDED8848)) 
    mux_TX_DV_out__0
       (.I0(State),
        .I1(i_TX_DV_0),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_DV_1),
        .O(mux_TX_DV_out__0_n_0));
  FDRE mux_TX_DV_out_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(mux_TX_DV_out__0_n_0),
        .Q(mux_TX_DV_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[0]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[0]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[1]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[1]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[2]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[2]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[3]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[3]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[4]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[4]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[5]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[5]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[6]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[6]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hDDED8848)) 
    \mux_TX_out[7]_i_1 
       (.I0(State),
        .I1(i_TX_Byte_0[7]),
        .I2(sel),
        .I3(sel_prev),
        .I4(i_TX_Byte_1[7]),
        .O(p_0_in[7]));
  FDRE \mux_TX_out_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(mux_TX_out[0]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(mux_TX_out[1]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(mux_TX_out[2]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(mux_TX_out[3]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(mux_TX_out[4]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(mux_TX_out[5]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(mux_TX_out[6]),
        .R(1'b0));
  FDRE \mux_TX_out_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(mux_TX_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sel_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(sel),
        .Q(sel_prev),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
