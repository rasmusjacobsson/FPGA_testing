// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 14:25:29 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Sebastian
//               Magnusson/Documents/GitHub/GLITCH-Software/FPGA/UART/UART_Continuation/UART_Continuation.gen/sources_1/bd/Block_Test/ip/Block_Test_Pulsemod_0_0_1/Block_Test_Pulsemod_0_0_sim_netlist.v}
// Design      : Block_Test_Pulsemod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_Test_Pulsemod_0_0,Pulsemod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pulsemod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Block_Test_Pulsemod_0_0
   (sysclk,
    i_signal,
    o_pulse);
  input sysclk;
  input i_signal;
  output o_pulse;

  wire i_signal;
  wire o_pulse;
  wire sysclk;

  Block_Test_Pulsemod_0_0_Pulsemod U0
       (.i_signal(i_signal),
        .o_pulse(o_pulse),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Pulsemod" *) 
module Block_Test_Pulsemod_0_0_Pulsemod
   (o_pulse,
    i_signal,
    sysclk);
  output o_pulse;
  input i_signal;
  input sysclk;

  wire Active;
  wire Active_i_1_n_0;
  wire \Counter[0]_i_1_n_0 ;
  wire \Counter[1]_i_1_n_0 ;
  wire \Counter_reg_n_0_[0] ;
  wire \Counter_reg_n_0_[1] ;
  wire i_signal;
  wire i_signal_previous;
  wire o_pulse;
  wire o_pulse_i_1_n_0;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    Active_i_1
       (.I0(\Counter_reg_n_0_[1] ),
        .I1(Active),
        .I2(i_signal),
        .I3(i_signal_previous),
        .O(Active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Active_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(Active_i_1_n_0),
        .Q(Active),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBB0B4444)) 
    \Counter[0]_i_1 
       (.I0(\Counter_reg_n_0_[1] ),
        .I1(Active),
        .I2(i_signal),
        .I3(i_signal_previous),
        .I4(\Counter_reg_n_0_[0] ),
        .O(\Counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hECEC20EC)) 
    \Counter[1]_i_1 
       (.I0(\Counter_reg_n_0_[0] ),
        .I1(\Counter_reg_n_0_[1] ),
        .I2(Active),
        .I3(i_signal),
        .I4(i_signal_previous),
        .O(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\Counter[0]_i_1_n_0 ),
        .Q(\Counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\Counter[1]_i_1_n_0 ),
        .Q(\Counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_signal_previous_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(i_signal),
        .Q(i_signal_previous),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_pulse_i_1
       (.I0(Active),
        .I1(\Counter_reg_n_0_[1] ),
        .O(o_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_pulse_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_pulse_i_1_n_0),
        .Q(o_pulse),
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
