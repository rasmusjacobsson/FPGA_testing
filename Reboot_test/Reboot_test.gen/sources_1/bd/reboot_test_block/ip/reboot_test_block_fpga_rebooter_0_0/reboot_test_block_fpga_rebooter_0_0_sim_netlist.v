// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Aug  7 19:06:55 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_sim_netlist.v
// Design      : reboot_test_block_fpga_rebooter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fpga_rebooter,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module reboot_test_block_fpga_rebooter_0_0
   (clk,
    reboot_trigger,
    led0,
    led1);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input reboot_trigger;
  output led0;
  output led1;

  wire clk;
  wire led0;
  wire led1;
  wire reboot_trigger;

  reboot_test_block_fpga_rebooter_0_0_fpga_rebooter U0
       (.clk(clk),
        .led0(led0),
        .led1(led1),
        .reboot_trigger(reboot_trigger));
endmodule

(* ORIG_REF_NAME = "fpga_rebooter" *) 
module reboot_test_block_fpga_rebooter_0_0_fpga_rebooter
   (led0,
    led1,
    clk,
    reboot_trigger);
  output led0;
  output led1;
  input clk;
  input reboot_trigger;

  wire CSIB;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire [31:0]I;
  wire RDWRB;
  wire clk;
  wire icap_csib_i_1_n_0;
  wire \icap_i[29]_i_1_n_0 ;
  wire \icap_i[2]_i_1_n_0 ;
  wire \icap_i[30]_i_1_n_0 ;
  wire \icap_i[31]_i_1_n_0 ;
  wire \icap_i[31]_i_2_n_0 ;
  wire \icap_i[3]_i_1_n_0 ;
  wire icap_i__0;
  wire icap_rdwrb_i_1_n_0;
  wire led0;
  wire led0__0_n_0;
  wire led1;
  wire led1__0_n_0;
  wire reboot_trigger;
  wire [3:0]state__0;
  wire [3:0]state__0__0;
  wire state_n_0;
  wire trigger_d;
  wire [31:0]NLW_ICAP_INST_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .O(state__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(state__0__0[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(state_n_0),
        .D(state__0__0[0]),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(state_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(state_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(state_n_0),
        .D(state__0__0[3]),
        .Q(state__0[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ICAPE2 #(
    .DEVICE_ID(32'h03651093),
    .ICAP_WIDTH("X32"),
    .SIM_CFG_FILE_NAME("NONE")) 
    ICAP_INST
       (.CLK(clk),
        .CSIB(CSIB),
        .I(I),
        .O(NLW_ICAP_INST_O_UNCONNECTED[31:0]),
        .RDWRB(RDWRB));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    icap_csib_i_1
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(CSIB),
        .O(icap_csib_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    icap_csib_reg
       (.C(clk),
        .CE(1'b1),
        .D(icap_csib_i_1_n_0),
        .Q(CSIB),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1554)) 
    icap_i
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state__0[0]),
        .O(icap_i__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_i[29]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\icap_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \icap_i[2]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .O(\icap_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \icap_i[30]_i_1 
       (.I0(state__0[1]),
        .O(\icap_i[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004C)) 
    \icap_i[31]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(\icap_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \icap_i[31]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\icap_i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \icap_i[3]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .O(\icap_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[0] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[3]_i_1_n_0 ),
        .Q(I[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[10] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[10]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[11] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[11]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[12] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[12]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[13] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[13]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[14] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[14]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[15] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[15]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[16] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[16]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[17] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[17]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[18] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[18]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[19] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[19]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[1] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[2]_i_1_n_0 ),
        .Q(I[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[20] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[20]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[21] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[21]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[22] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[22]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[23] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[23]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[24] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[24]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[25] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[25]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[26] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[26]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[27] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[27]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[28] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[28]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[29] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[29]_i_1_n_0 ),
        .Q(I[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[2] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[2]_i_1_n_0 ),
        .Q(I[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[30] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[30]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[31] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[31]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[3] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[3]_i_1_n_0 ),
        .Q(I[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[4] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[4]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[5] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[5]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[6] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[6]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[7] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[7]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[8] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[31]_i_2_n_0 ),
        .Q(I[8]),
        .R(\icap_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \icap_i_reg[9] 
       (.C(clk),
        .CE(icap_i__0),
        .D(\icap_i[30]_i_1_n_0 ),
        .Q(I[9]),
        .R(\icap_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    icap_rdwrb_i_1
       (.I0(RDWRB),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[3]),
        .O(icap_rdwrb_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    icap_rdwrb_reg
       (.C(clk),
        .CE(1'b1),
        .D(icap_rdwrb_i_1_n_0),
        .Q(RDWRB),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000FFF4)) 
    led0__0
       (.I0(trigger_d),
        .I1(reboot_trigger),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[3]),
        .I5(state__0[0]),
        .O(led0__0_n_0));
  FDRE led0_reg
       (.C(clk),
        .CE(1'b1),
        .D(led0__0_n_0),
        .Q(led0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555501000101)) 
    led1__0
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(trigger_d),
        .I4(reboot_trigger),
        .I5(state__0[0]),
        .O(led1__0_n_0));
  FDRE led1_reg
       (.C(clk),
        .CE(1'b1),
        .D(led1__0_n_0),
        .Q(led1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5554555555545554)) 
    state
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(trigger_d),
        .I5(reboot_trigger),
        .O(state_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trigger_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(reboot_trigger),
        .Q(trigger_d),
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
