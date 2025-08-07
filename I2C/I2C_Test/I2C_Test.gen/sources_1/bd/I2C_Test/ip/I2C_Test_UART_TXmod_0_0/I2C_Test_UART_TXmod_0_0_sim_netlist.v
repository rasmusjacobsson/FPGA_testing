// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 13 16:27:35 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0_sim_netlist.v
// Design      : I2C_Test_UART_TXmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_Test_UART_TXmod_0_0,UART_TXmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "UART_TXmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module I2C_Test_UART_TXmod_0_0
   (sysclk,
    i_TX_DV,
    i_TX_Byte,
    o_TX_Active,
    o_TX_Serial,
    o_TX_Done);
  input sysclk;
  input i_TX_DV;
  input [7:0]i_TX_Byte;
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;

  wire [7:0]i_TX_Byte;
  wire i_TX_DV;
  wire o_TX_Active;
  wire o_TX_Done;
  wire o_TX_Serial;
  wire sysclk;

  I2C_Test_UART_TXmod_0_0_UART_TXmod U0
       (.i_TX_Byte(i_TX_Byte),
        .i_TX_DV(i_TX_DV),
        .o_TX_Active(o_TX_Active),
        .o_TX_Done(o_TX_Done),
        .o_TX_Serial(o_TX_Serial),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "UART_TXmod" *) 
module I2C_Test_UART_TXmod_0_0_UART_TXmod
   (o_TX_Active,
    o_TX_Serial,
    o_TX_Done,
    sysclk,
    i_TX_Byte,
    i_TX_DV);
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;
  input sysclk;
  input [7:0]i_TX_Byte;
  input i_TX_DV;

  wire \FSM_sequential_r_SM_Main[0]_i_2_n_0 ;
  wire [7:0]i_TX_Byte;
  wire i_TX_DV;
  wire o_TX_Active;
  wire o_TX_Active_i_1_n_0;
  wire o_TX_Done;
  wire o_TX_Serial;
  wire o_TX_Serial_i_1_n_0;
  wire o_TX_Serial_i_2_n_0;
  wire o_TX_Serial_i_3_n_0;
  wire o_TX_Serial_i_4_n_0;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire [6:0]r_Clk_Count;
  wire r_Clk_Count0;
  wire \r_Clk_Count[6]_i_4_n_0 ;
  wire r_Clk_Count_1;
  wire [6:0]r_Clk_Count_reg;
  wire [2:0]r_SM_Main;
  wire [2:0]r_SM_Main__0;
  wire [7:0]r_TX_Data;
  wire r_TX_Data_0;
  wire r_TX_Done_i_1_n_0;
  wire r_TX_Done_i_2_n_0;
  wire r_TX_Done_i_3_n_0;
  wire sysclk;

  LUT6 #(
    .INIT(64'h000000008989DD88)) 
    \FSM_sequential_r_SM_Main[0]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(r_TX_Done_i_2_n_0),
        .I2(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .I3(i_TX_DV),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[2]),
        .O(r_SM_Main__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_r_SM_Main[0]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[2] ),
        .O(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \FSM_sequential_r_SM_Main[1]_i_1 
       (.I0(r_SM_Main[1]),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[2]),
        .O(r_SM_Main__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_r_SM_Main[2]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[0]),
        .I3(r_TX_Done_i_2_n_0),
        .O(r_SM_Main__0[2]));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(r_SM_Main__0[0]),
        .Q(r_SM_Main[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(r_SM_Main__0[1]),
        .Q(r_SM_Main[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(r_SM_Main__0[2]),
        .Q(r_SM_Main[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    o_TX_Active_i_1
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[1]),
        .I3(o_TX_Active),
        .O(o_TX_Active_i_1_n_0));
  FDRE o_TX_Active_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_TX_Active_i_1_n_0),
        .Q(o_TX_Active),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    o_TX_Serial_i_1
       (.I0(o_TX_Serial),
        .I1(r_SM_Main[2]),
        .I2(o_TX_Serial_i_2_n_0),
        .O(o_TX_Serial_i_1_n_0));
  LUT6 #(
    .INIT(64'h3131212131213121)) 
    o_TX_Serial_i_2
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[1]),
        .I3(o_TX_Serial_i_3_n_0),
        .I4(o_TX_Serial_i_4_n_0),
        .I5(\r_Bit_Index_reg_n_0_[2] ),
        .O(o_TX_Serial_i_2_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_TX_Serial_i_3
       (.I0(r_TX_Data[1]),
        .I1(r_TX_Data[3]),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(r_TX_Data[0]),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(r_TX_Data[2]),
        .O(o_TX_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_TX_Serial_i_4
       (.I0(r_TX_Data[5]),
        .I1(r_TX_Data[7]),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(r_TX_Data[4]),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(r_TX_Data[6]),
        .O(o_TX_Serial_i_4_n_0));
  FDRE o_TX_Serial_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_TX_Serial_i_1_n_0),
        .Q(o_TX_Serial),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA98AA00)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(r_TX_Done_i_2_n_0),
        .I2(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[0]),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCC6CC00)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[0]),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9AA00)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(r_TX_Done_i_2_n_0),
        .I2(\r_Bit_Index[2]_i_2_n_0 ),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[0]),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Bit_Index[2]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Clk_Count[0]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_Clk_Count_reg[0]),
        .O(r_Clk_Count[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_Clk_Count[1]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .O(r_Clk_Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_Clk_Count[2]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[2]),
        .O(r_Clk_Count[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_Clk_Count[3]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_Clk_Count_reg[1]),
        .I2(r_Clk_Count_reg[0]),
        .I3(r_Clk_Count_reg[2]),
        .I4(r_Clk_Count_reg[3]),
        .O(r_Clk_Count[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_Clk_Count[4]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_Clk_Count_reg[2]),
        .I2(r_Clk_Count_reg[0]),
        .I3(r_Clk_Count_reg[1]),
        .I4(r_Clk_Count_reg[3]),
        .I5(r_Clk_Count_reg[4]),
        .O(r_Clk_Count[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_Clk_Count[5]_i_1 
       (.I0(r_TX_Done_i_2_n_0),
        .I1(\r_Clk_Count[6]_i_4_n_0 ),
        .I2(r_Clk_Count_reg[5]),
        .O(r_Clk_Count[5]));
  LUT3 #(
    .INIT(8'h01)) 
    \r_Clk_Count[6]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[2]),
        .O(r_Clk_Count0));
  LUT3 #(
    .INIT(8'h54)) 
    \r_Clk_Count[6]_i_2 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[1]),
        .O(r_Clk_Count_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_Clk_Count[6]_i_3 
       (.I0(r_Clk_Count_reg[5]),
        .I1(\r_Clk_Count[6]_i_4_n_0 ),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_Clk_Count_reg[6]),
        .O(r_Clk_Count[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_Clk_Count[6]_i_4 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[2]),
        .I2(r_Clk_Count_reg[0]),
        .I3(r_Clk_Count_reg[1]),
        .I4(r_Clk_Count_reg[3]),
        .O(\r_Clk_Count[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[0]),
        .Q(r_Clk_Count_reg[0]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[1]),
        .Q(r_Clk_Count_reg[1]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[2]),
        .Q(r_Clk_Count_reg[2]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[3]),
        .Q(r_Clk_Count_reg[3]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[4]),
        .Q(r_Clk_Count_reg[4]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[5]),
        .Q(r_Clk_Count_reg[5]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(sysclk),
        .CE(r_Clk_Count_1),
        .D(r_Clk_Count[6]),
        .Q(r_Clk_Count_reg[6]),
        .R(r_Clk_Count0));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_TX_Data[7]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(i_TX_DV),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .O(r_TX_Data_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[0] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[0]),
        .Q(r_TX_Data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[1] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[1]),
        .Q(r_TX_Data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[2] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[2]),
        .Q(r_TX_Data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[3] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[3]),
        .Q(r_TX_Data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[4] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[4]),
        .Q(r_TX_Data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[5] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[5]),
        .Q(r_TX_Data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[6] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[6]),
        .Q(r_TX_Data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[7] 
       (.C(sysclk),
        .CE(r_TX_Data_0),
        .D(i_TX_Byte[7]),
        .Q(r_TX_Data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFC100C)) 
    r_TX_Done_i_1
       (.I0(r_TX_Done_i_2_n_0),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(o_TX_Done),
        .O(r_TX_Done_i_1_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    r_TX_Done_i_2
       (.I0(r_Clk_Count_reg[6]),
        .I1(r_Clk_Count_reg[5]),
        .I2(r_TX_Done_i_3_n_0),
        .O(r_TX_Done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01111111)) 
    r_TX_Done_i_3
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[3]),
        .I2(r_Clk_Count_reg[0]),
        .I3(r_Clk_Count_reg[1]),
        .I4(r_Clk_Count_reg[2]),
        .O(r_TX_Done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_TX_Done_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(r_TX_Done_i_1_n_0),
        .Q(o_TX_Done),
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
