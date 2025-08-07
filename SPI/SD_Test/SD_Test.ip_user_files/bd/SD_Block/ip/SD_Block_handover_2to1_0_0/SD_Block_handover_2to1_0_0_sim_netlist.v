// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Aug  6 12:05:14 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_handover_2to1_0_0/SD_Block_handover_2to1_0_0_sim_netlist.v
// Design      : SD_Block_handover_2to1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SD_Block_handover_2to1_0_0,handover_2to1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "handover_2to1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module SD_Block_handover_2to1_0_0
   (sysclk,
    done0,
    done1,
    in0,
    in1,
    mux_out);
  input sysclk;
  input done0;
  input done1;
  input in0;
  input in1;
  output mux_out;

  wire done0;
  wire done1;
  wire in0;
  wire in1;
  wire mux_out;
  wire sysclk;

  SD_Block_handover_2to1_0_0_handover_2to1 U0
       (.done0(done0),
        .done1(done1),
        .in0(in0),
        .in1(in1),
        .mux_out(mux_out),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "handover_2to1" *) 
module SD_Block_handover_2to1_0_0_handover_2to1
   (mux_out,
    sysclk,
    done0,
    done1,
    in1,
    in0);
  output mux_out;
  input sysclk;
  input done0;
  input done1;
  input in1;
  input in0;

  wire State;
  wire State_i_1_n_0;
  wire done0;
  wire done0_prev;
  wire done0_prev_i_1_n_0;
  wire done1;
  wire done1_prev;
  wire done1_prev_i_1_n_0;
  wire in0;
  wire in1;
  wire mux_out;
  wire mux_out_i_2_n_0;
  wire mux_out_i_3_n_0;
  wire mux_out_reg_i_1_n_0;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD0D0DFD0)) 
    State_i_1
       (.I0(done0),
        .I1(done0_prev),
        .I2(State),
        .I3(done1),
        .I4(done1_prev),
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
  LUT3 #(
    .INIT(8'hB8)) 
    done0_prev_i_1
       (.I0(done0),
        .I1(State),
        .I2(done0_prev),
        .O(done0_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done0_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(done0_prev_i_1_n_0),
        .Q(done0_prev),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    done1_prev_i_1
       (.I0(done1_prev),
        .I1(State),
        .I2(done1),
        .O(done1_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done1_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(done1_prev_i_1_n_0),
        .Q(done1_prev),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    mux_out_i_2
       (.I0(in0),
        .I1(done1),
        .I2(done1_prev),
        .I3(in1),
        .O(mux_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    mux_out_i_3
       (.I0(in1),
        .I1(done0),
        .I2(done0_prev),
        .I3(in0),
        .O(mux_out_i_3_n_0));
  FDRE mux_out_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(mux_out_reg_i_1_n_0),
        .Q(mux_out),
        .R(1'b0));
  MUXF7 mux_out_reg_i_1
       (.I0(mux_out_i_2_n_0),
        .I1(mux_out_i_3_n_0),
        .O(mux_out_reg_i_1_n_0),
        .S(State));
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
