// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug  5 17:21:06 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Switchmod_0_0/I2C_Test_Switchmod_0_0_sim_netlist.v
// Design      : I2C_Test_Switchmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_Test_Switchmod_0_0,Switchmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Switchmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module I2C_Test_Switchmod_0_0
   (sysclk,
    i_signal,
    o_signal,
    led0);
  input sysclk;
  input i_signal;
  output o_signal;
  output led0;

  wire i_signal;
  wire led0;
  wire sysclk;

  assign o_signal = led0;
  I2C_Test_Switchmod_0_0_Switchmod U0
       (.i_signal(i_signal),
        .led0(led0),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Switchmod" *) 
module I2C_Test_Switchmod_0_0_Switchmod
   (led0,
    i_signal,
    sysclk);
  output led0;
  input i_signal;
  input sysclk;

  wire State_i_1_n_0;
  wire State_reg_n_0;
  wire i_signal;
  wire i_signal_prev;
  wire led0;
  wire o_signal_i_1_n_0;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    State_i_1
       (.I0(i_signal),
        .I1(i_signal_prev),
        .I2(State_reg_n_0),
        .O(State_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    State_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(State_i_1_n_0),
        .Q(State_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_signal_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(i_signal),
        .Q(i_signal_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h59)) 
    o_signal_i_1
       (.I0(State_reg_n_0),
        .I1(i_signal),
        .I2(i_signal_prev),
        .O(o_signal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_signal_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_signal_i_1_n_0),
        .Q(led0),
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
