// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Aug 23 17:18:23 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/FPGA_testing/TC_TM_tests/TC_TM_tests.gen/sources_1/bd/I2C_RTC_test/ip/I2C_RTC_test_I2C_RTC_0_0/I2C_RTC_test_I2C_RTC_0_0_sim_netlist.v
// Design      : I2C_RTC_test_I2C_RTC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_RTC,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module I2C_RTC_test_I2C_RTC_0_0
   (clk,
    rst,
    i_busy,
    i_data_read,
    TX_done,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    RTC_DV,
    RTC_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_busy;
  input [7:0]i_data_read;
  input TX_done;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output RTC_DV;
  output [7:0]RTC_data;

  wire \<const0> ;
  wire RTC_DV;
  wire [7:0]RTC_data;
  wire TX_done;
  wire clk;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [5:5]\^o_i2c_address ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire rst;

  assign o_i2c_address[6] = \^o_i2c_address [5];
  assign o_i2c_address[5] = \^o_i2c_address [5];
  assign o_i2c_address[4] = \<const0> ;
  assign o_i2c_address[3] = \^o_i2c_address [5];
  assign o_i2c_address[2] = \<const0> ;
  assign o_i2c_address[1] = \<const0> ;
  assign o_i2c_address[0] = \<const0> ;
  assign o_i2c_data_wr[7] = \<const0> ;
  assign o_i2c_data_wr[6] = \<const0> ;
  assign o_i2c_data_wr[5] = \<const0> ;
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \<const0> ;
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \<const0> ;
  assign o_i2c_data_wr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  I2C_RTC_test_I2C_RTC_0_0_I2C_RTC U0
       (.RTC_DV(RTC_DV),
        .RTC_data(RTC_data),
        .TX_done(TX_done),
        .clk(clk),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .o_i2c_address(\^o_i2c_address ),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "I2C_RTC" *) 
module I2C_RTC_test_I2C_RTC_0_0_I2C_RTC
   (RTC_data,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    RTC_DV,
    i_busy,
    rst,
    clk,
    TX_done,
    i_data_read);
  output [7:0]RTC_data;
  output o_i2c_ena;
  output [0:0]o_i2c_address;
  output o_i2c_rw;
  output RTC_DV;
  input i_busy;
  input rst;
  input clk;
  input TX_done;
  input [7:0]i_data_read;

  wire \FSM_sequential_state[0]_inv_i_1_n_0 ;
  wire \FSM_sequential_state[0]_inv_i_2_n_0 ;
  wire \FSM_sequential_state[0]_inv_i_3_n_0 ;
  wire \FSM_sequential_state[0]_inv_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire RTC_DV;
  wire RTC_DV_i_1_n_0;
  wire RTC_DV_i_2_n_0;
  wire [7:0]RTC_data;
  wire \RTC_data[7]_i_1_n_0 ;
  wire [63:39]RTC_data_i;
  wire [7:0]RTC_data_i0_in;
  wire \RTC_data_i[39]_i_2_n_0 ;
  wire \RTC_data_i[47]_i_2_n_0 ;
  wire \RTC_data_i[55]_i_2_n_0 ;
  wire \RTC_data_i[63]_i_3_n_0 ;
  wire \RTC_data_i[63]_i_4_n_0 ;
  wire \RTC_data_i_reg_n_0_[32] ;
  wire \RTC_data_i_reg_n_0_[33] ;
  wire \RTC_data_i_reg_n_0_[34] ;
  wire \RTC_data_i_reg_n_0_[35] ;
  wire \RTC_data_i_reg_n_0_[36] ;
  wire \RTC_data_i_reg_n_0_[37] ;
  wire \RTC_data_i_reg_n_0_[38] ;
  wire \RTC_data_i_reg_n_0_[39] ;
  wire \RTC_data_i_reg_n_0_[40] ;
  wire \RTC_data_i_reg_n_0_[41] ;
  wire \RTC_data_i_reg_n_0_[42] ;
  wire \RTC_data_i_reg_n_0_[43] ;
  wire \RTC_data_i_reg_n_0_[44] ;
  wire \RTC_data_i_reg_n_0_[45] ;
  wire \RTC_data_i_reg_n_0_[46] ;
  wire \RTC_data_i_reg_n_0_[47] ;
  wire \RTC_data_i_reg_n_0_[48] ;
  wire \RTC_data_i_reg_n_0_[49] ;
  wire \RTC_data_i_reg_n_0_[50] ;
  wire \RTC_data_i_reg_n_0_[51] ;
  wire \RTC_data_i_reg_n_0_[52] ;
  wire \RTC_data_i_reg_n_0_[53] ;
  wire \RTC_data_i_reg_n_0_[54] ;
  wire \RTC_data_i_reg_n_0_[55] ;
  wire \RTC_data_i_reg_n_0_[56] ;
  wire \RTC_data_i_reg_n_0_[57] ;
  wire \RTC_data_i_reg_n_0_[58] ;
  wire \RTC_data_i_reg_n_0_[59] ;
  wire \RTC_data_i_reg_n_0_[60] ;
  wire \RTC_data_i_reg_n_0_[61] ;
  wire \RTC_data_i_reg_n_0_[62] ;
  wire \RTC_data_i_reg_n_0_[63] ;
  wire TX_done;
  wire [3:0]busy_cnt;
  wire \busy_cnt[1]_i_1_n_0 ;
  wire \busy_cnt_reg_n_0_[0] ;
  wire \busy_cnt_reg_n_0_[1] ;
  wire \busy_cnt_reg_n_0_[2] ;
  wire \busy_cnt_reg_n_0_[3] ;
  wire busy_prev;
  wire busy_prev_reg_n_0;
  wire clk;
  wire [13:1]data0;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [1:0]mess_cnt;
  wire \mess_cnt[0]_i_1_n_0 ;
  wire \mess_cnt[1]_i_1_n_0 ;
  wire [0:0]o_i2c_address;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_ena_i_4_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw_i_1_n_0;
  wire [7:0]p_0_in;
  wire reading_in_progress_i_1_n_0;
  wire reading_in_progress_i_2_n_0;
  wire reading_in_progress_reg_n_0;
  wire rst;
  wire [1:0]state__0;
  wire [13:0]timeout;
  wire timeout0_carry__0_n_0;
  wire timeout0_carry__0_n_1;
  wire timeout0_carry__0_n_2;
  wire timeout0_carry__0_n_3;
  wire timeout0_carry__1_n_0;
  wire timeout0_carry__1_n_1;
  wire timeout0_carry__1_n_2;
  wire timeout0_carry__1_n_3;
  wire timeout0_carry_i_1__0_n_0;
  wire timeout0_carry_i_1__1_n_0;
  wire timeout0_carry_i_1__2_n_0;
  wire timeout0_carry_i_1_n_0;
  wire timeout0_carry_i_2__0_n_0;
  wire timeout0_carry_i_2__1_n_0;
  wire timeout0_carry_i_2_n_0;
  wire timeout0_carry_i_3__0_n_0;
  wire timeout0_carry_i_3__1_n_0;
  wire timeout0_carry_i_3_n_0;
  wire timeout0_carry_i_4__0_n_0;
  wire timeout0_carry_i_4__1_n_0;
  wire timeout0_carry_i_4_n_0;
  wire timeout0_carry_i_5_n_0;
  wire timeout0_carry_n_0;
  wire timeout0_carry_n_1;
  wire timeout0_carry_n_2;
  wire timeout0_carry_n_3;
  wire \timeout[13]_i_2_n_0 ;
  wire \timeout[13]_i_3_n_0 ;
  wire \timeout[13]_i_4_n_0 ;
  wire \timeout_reg_n_0_[0] ;
  wire \timeout_reg_n_0_[10] ;
  wire \timeout_reg_n_0_[11] ;
  wire \timeout_reg_n_0_[12] ;
  wire \timeout_reg_n_0_[13] ;
  wire \timeout_reg_n_0_[1] ;
  wire \timeout_reg_n_0_[2] ;
  wire \timeout_reg_n_0_[3] ;
  wire \timeout_reg_n_0_[4] ;
  wire \timeout_reg_n_0_[5] ;
  wire \timeout_reg_n_0_[6] ;
  wire \timeout_reg_n_0_[7] ;
  wire \timeout_reg_n_0_[8] ;
  wire \timeout_reg_n_0_[9] ;
  wire [3:0]NLW_timeout0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_timeout0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0101010131310131)) 
    \FSM_sequential_state[0]_inv_i_1 
       (.I0(RTC_DV_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[0]_inv_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_inv_i_3_n_0 ),
        .I5(\FSM_sequential_state[0]_inv_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_inv_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[0]_inv_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(\busy_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_inv_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_inv_i_3 
       (.I0(i_busy),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_inv_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state[0]_inv_i_4 
       (.I0(\timeout[13]_i_4_n_0 ),
        .I1(\timeout_reg_n_0_[8] ),
        .I2(\timeout_reg_n_0_[11] ),
        .I3(\timeout_reg_n_0_[7] ),
        .I4(\timeout_reg_n_0_[0] ),
        .I5(\timeout[13]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_inv_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(RTC_DV_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:11,s_rtc:00,s_cleanup:10,s_rtc_send:01" *) 
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_inv_i_1_n_0 ),
        .Q(state__0[0]),
        .S(rst));
  (* FSM_ENCODED_STATES = "s_idle:11,s_rtc:00,s_cleanup:10,s_rtc_send:01" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    RTC_DV_i_1
       (.I0(TX_done),
        .I1(rst),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(RTC_DV_i_2_n_0),
        .I5(RTC_DV),
        .O(RTC_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'h555551550051AAAA)) 
    RTC_DV_i_2
       (.I0(\busy_cnt_reg_n_0_[3] ),
        .I1(mess_cnt[0]),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(mess_cnt[1]),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(RTC_DV_i_2_n_0));
  FDRE RTC_DV_reg
       (.C(clk),
        .CE(1'b1),
        .D(RTC_DV_i_1_n_0),
        .Q(RTC_DV),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[0]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[32] ),
        .I1(\RTC_data_i_reg_n_0_[48] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[40] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[56] ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[1]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[33] ),
        .I1(\RTC_data_i_reg_n_0_[49] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[41] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[57] ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[2]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[34] ),
        .I1(\RTC_data_i_reg_n_0_[50] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[42] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[58] ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[3]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[35] ),
        .I1(\RTC_data_i_reg_n_0_[51] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[43] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[59] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[4]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[36] ),
        .I1(\RTC_data_i_reg_n_0_[52] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[44] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[60] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[5]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[37] ),
        .I1(\RTC_data_i_reg_n_0_[53] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[45] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[61] ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[6]_i_1 
       (.I0(\RTC_data_i_reg_n_0_[38] ),
        .I1(\RTC_data_i_reg_n_0_[54] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[46] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[62] ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \RTC_data[7]_i_1 
       (.I0(RTC_DV_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(rst),
        .I4(TX_done),
        .O(\RTC_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RTC_data[7]_i_2 
       (.I0(\RTC_data_i_reg_n_0_[39] ),
        .I1(\RTC_data_i_reg_n_0_[55] ),
        .I2(mess_cnt[0]),
        .I3(\RTC_data_i_reg_n_0_[47] ),
        .I4(mess_cnt[1]),
        .I5(\RTC_data_i_reg_n_0_[63] ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAA00AA00AB00AA00)) 
    \RTC_data_i[39]_i_1 
       (.I0(state__0[1]),
        .I1(\RTC_data_i[63]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_inv_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(\RTC_data_i[39]_i_2_n_0 ),
        .I5(\busy_cnt_reg_n_0_[3] ),
        .O(RTC_data_i[39]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \RTC_data_i[39]_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .O(\RTC_data_i[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB0000AAAA0000)) 
    \RTC_data_i[47]_i_1 
       (.I0(state__0[1]),
        .I1(\RTC_data_i[63]_i_3_n_0 ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(state__0[0]),
        .I5(\RTC_data_i[47]_i_2_n_0 ),
        .O(RTC_data_i[47]));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \RTC_data_i[47]_i_2 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .I5(\busy_cnt_reg_n_0_[3] ),
        .O(\RTC_data_i[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888C88C88888888)) 
    \RTC_data_i[55]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\RTC_data_i[55]_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_inv_i_3_n_0 ),
        .I5(\RTC_data_i[63]_i_4_n_0 ),
        .O(RTC_data_i[55]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \RTC_data_i[55]_i_2 
       (.I0(i_busy),
        .I1(busy_prev_reg_n_0),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .O(\RTC_data_i[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[56]_i_1 
       (.I0(i_data_read[0]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[57]_i_1 
       (.I0(i_data_read[1]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[58]_i_1 
       (.I0(i_data_read[2]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[59]_i_1 
       (.I0(i_data_read[3]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[60]_i_1 
       (.I0(i_data_read[4]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[61]_i_1 
       (.I0(i_data_read[5]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[62]_i_1 
       (.I0(i_data_read[6]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[6]));
  LUT6 #(
    .INIT(64'hAAAE0000AAAA0000)) 
    \RTC_data_i[63]_i_1 
       (.I0(state__0[1]),
        .I1(\RTC_data_i[63]_i_3_n_0 ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(state__0[0]),
        .I5(\RTC_data_i[63]_i_4_n_0 ),
        .O(RTC_data_i[63]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RTC_data_i[63]_i_2 
       (.I0(i_data_read[7]),
        .I1(state__0[1]),
        .O(RTC_data_i0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \RTC_data_i[63]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(\RTC_data_i[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000055155555)) 
    \RTC_data_i[63]_i_4 
       (.I0(\busy_cnt_reg_n_0_[3] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(\RTC_data_i[63]_i_4_n_0 ));
  FDRE \RTC_data_i_reg[32] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[0]),
        .Q(\RTC_data_i_reg_n_0_[32] ),
        .R(rst));
  FDRE \RTC_data_i_reg[33] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[1]),
        .Q(\RTC_data_i_reg_n_0_[33] ),
        .R(rst));
  FDRE \RTC_data_i_reg[34] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[2]),
        .Q(\RTC_data_i_reg_n_0_[34] ),
        .R(rst));
  FDRE \RTC_data_i_reg[35] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[3]),
        .Q(\RTC_data_i_reg_n_0_[35] ),
        .R(rst));
  FDRE \RTC_data_i_reg[36] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[4]),
        .Q(\RTC_data_i_reg_n_0_[36] ),
        .R(rst));
  FDRE \RTC_data_i_reg[37] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[5]),
        .Q(\RTC_data_i_reg_n_0_[37] ),
        .R(rst));
  FDRE \RTC_data_i_reg[38] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[6]),
        .Q(\RTC_data_i_reg_n_0_[38] ),
        .R(rst));
  FDRE \RTC_data_i_reg[39] 
       (.C(clk),
        .CE(RTC_data_i[39]),
        .D(RTC_data_i0_in[7]),
        .Q(\RTC_data_i_reg_n_0_[39] ),
        .R(rst));
  FDRE \RTC_data_i_reg[40] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[0]),
        .Q(\RTC_data_i_reg_n_0_[40] ),
        .R(rst));
  FDRE \RTC_data_i_reg[41] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[1]),
        .Q(\RTC_data_i_reg_n_0_[41] ),
        .R(rst));
  FDRE \RTC_data_i_reg[42] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[2]),
        .Q(\RTC_data_i_reg_n_0_[42] ),
        .R(rst));
  FDRE \RTC_data_i_reg[43] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[3]),
        .Q(\RTC_data_i_reg_n_0_[43] ),
        .R(rst));
  FDRE \RTC_data_i_reg[44] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[4]),
        .Q(\RTC_data_i_reg_n_0_[44] ),
        .R(rst));
  FDRE \RTC_data_i_reg[45] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[5]),
        .Q(\RTC_data_i_reg_n_0_[45] ),
        .R(rst));
  FDRE \RTC_data_i_reg[46] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[6]),
        .Q(\RTC_data_i_reg_n_0_[46] ),
        .R(rst));
  FDRE \RTC_data_i_reg[47] 
       (.C(clk),
        .CE(RTC_data_i[47]),
        .D(RTC_data_i0_in[7]),
        .Q(\RTC_data_i_reg_n_0_[47] ),
        .R(rst));
  FDRE \RTC_data_i_reg[48] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[0]),
        .Q(\RTC_data_i_reg_n_0_[48] ),
        .R(rst));
  FDRE \RTC_data_i_reg[49] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[1]),
        .Q(\RTC_data_i_reg_n_0_[49] ),
        .R(rst));
  FDRE \RTC_data_i_reg[50] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[2]),
        .Q(\RTC_data_i_reg_n_0_[50] ),
        .R(rst));
  FDRE \RTC_data_i_reg[51] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[3]),
        .Q(\RTC_data_i_reg_n_0_[51] ),
        .R(rst));
  FDRE \RTC_data_i_reg[52] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[4]),
        .Q(\RTC_data_i_reg_n_0_[52] ),
        .R(rst));
  FDRE \RTC_data_i_reg[53] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[5]),
        .Q(\RTC_data_i_reg_n_0_[53] ),
        .R(rst));
  FDRE \RTC_data_i_reg[54] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[6]),
        .Q(\RTC_data_i_reg_n_0_[54] ),
        .R(rst));
  FDRE \RTC_data_i_reg[55] 
       (.C(clk),
        .CE(RTC_data_i[55]),
        .D(RTC_data_i0_in[7]),
        .Q(\RTC_data_i_reg_n_0_[55] ),
        .R(rst));
  FDRE \RTC_data_i_reg[56] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[0]),
        .Q(\RTC_data_i_reg_n_0_[56] ),
        .R(rst));
  FDRE \RTC_data_i_reg[57] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[1]),
        .Q(\RTC_data_i_reg_n_0_[57] ),
        .R(rst));
  FDRE \RTC_data_i_reg[58] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[2]),
        .Q(\RTC_data_i_reg_n_0_[58] ),
        .R(rst));
  FDRE \RTC_data_i_reg[59] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[3]),
        .Q(\RTC_data_i_reg_n_0_[59] ),
        .R(rst));
  FDRE \RTC_data_i_reg[60] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[4]),
        .Q(\RTC_data_i_reg_n_0_[60] ),
        .R(rst));
  FDRE \RTC_data_i_reg[61] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[5]),
        .Q(\RTC_data_i_reg_n_0_[61] ),
        .R(rst));
  FDRE \RTC_data_i_reg[62] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[6]),
        .Q(\RTC_data_i_reg_n_0_[62] ),
        .R(rst));
  FDRE \RTC_data_i_reg[63] 
       (.C(clk),
        .CE(RTC_data_i[63]),
        .D(RTC_data_i0_in[7]),
        .Q(\RTC_data_i_reg_n_0_[63] ),
        .R(rst));
  FDRE \RTC_data_reg[0] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(RTC_data[0]),
        .R(1'b0));
  FDRE \RTC_data_reg[1] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(RTC_data[1]),
        .R(1'b0));
  FDRE \RTC_data_reg[2] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(RTC_data[2]),
        .R(1'b0));
  FDRE \RTC_data_reg[3] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(RTC_data[3]),
        .R(1'b0));
  FDRE \RTC_data_reg[4] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(RTC_data[4]),
        .R(1'b0));
  FDRE \RTC_data_reg[5] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(RTC_data[5]),
        .R(1'b0));
  FDRE \RTC_data_reg[6] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(RTC_data[6]),
        .R(1'b0));
  FDRE \RTC_data_reg[7] 
       (.C(clk),
        .CE(\RTC_data[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(RTC_data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111011111111)) 
    \busy_cnt[0]_i_1 
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(state__0[1]),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[2] ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[3] ),
        .O(busy_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \busy_cnt[1]_i_1 
       (.I0(state__0[1]),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .O(\busy_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \busy_cnt[2]_i_1 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .I5(state__0[1]),
        .O(busy_cnt[2]));
  LUT5 #(
    .INIT(32'h00005554)) 
    \busy_cnt[3]_i_1 
       (.I0(o_i2c_ena_i_2_n_0),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\FSM_sequential_state[0]_inv_i_3_n_0 ),
        .I4(state__0[1]),
        .O(busy_cnt[3]));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[0] 
       (.C(clk),
        .CE(state__0[0]),
        .D(busy_cnt[0]),
        .Q(\busy_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[1] 
       (.C(clk),
        .CE(state__0[0]),
        .D(\busy_cnt[1]_i_1_n_0 ),
        .Q(\busy_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[2] 
       (.C(clk),
        .CE(state__0[0]),
        .D(busy_cnt[2]),
        .Q(\busy_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[3] 
       (.C(clk),
        .CE(state__0[0]),
        .D(busy_cnt[3]),
        .Q(\busy_cnt_reg_n_0_[3] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    busy_prev_i_1
       (.I0(i_busy),
        .I1(state__0[1]),
        .O(busy_prev));
  FDRE busy_prev_reg
       (.C(clk),
        .CE(state__0[0]),
        .D(busy_prev),
        .Q(busy_prev_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3D3F0200)) 
    \mess_cnt[0]_i_1 
       (.I0(RTC_DV_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(TX_done),
        .I4(mess_cnt[0]),
        .O(\mess_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF70FFF00080000)) 
    \mess_cnt[1]_i_1 
       (.I0(mess_cnt[0]),
        .I1(RTC_DV_i_2_n_0),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(TX_done),
        .I5(mess_cnt[1]),
        .O(\mess_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mess_cnt[0]_i_1_n_0 ),
        .Q(mess_cnt[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mess_cnt[1]_i_1_n_0 ),
        .Q(mess_cnt[1]),
        .R(rst));
  LUT6 #(
    .INIT(64'h5555FFFF00002282)) 
    \o_i2c_address[6]_i_1 
       (.I0(\o_i2c_address[6]_i_2_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(state__0[1]),
        .I5(o_i2c_address),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88C8888888888C88)) 
    \o_i2c_address[6]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\busy_cnt_reg_n_0_[2] ),
        .I3(\RTC_data_i[55]_i_2_n_0 ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[3] ),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  FDRE \o_i2c_address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_address[6]_i_1_n_0 ),
        .Q(o_i2c_address),
        .R(rst));
  LUT6 #(
    .INIT(64'h00FEFF0000080000)) 
    o_i2c_ena_i_1
       (.I0(o_i2c_ena_i_2_n_0),
        .I1(o_i2c_ena_i_3_n_0),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555955555555555)) 
    o_i2c_ena_i_2
       (.I0(\busy_cnt_reg_n_0_[3] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(busy_prev_reg_n_0),
        .I5(i_busy),
        .O(o_i2c_ena_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h59)) 
    o_i2c_ena_i_3
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .O(o_i2c_ena_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FFAEAA)) 
    o_i2c_ena_i_4
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_4_n_0));
  FDRE o_i2c_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_ena_i_1_n_0),
        .Q(o_i2c_ena),
        .R(rst));
  LUT6 #(
    .INIT(64'h4510FFFF45100000)) 
    o_i2c_rw_i_1
       (.I0(state__0[1]),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(\o_i2c_address[6]_i_2_n_0 ),
        .I5(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  FDRE o_i2c_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000050)) 
    reading_in_progress_i_1
       (.I0(reading_in_progress_i_2_n_0),
        .I1(\FSM_sequential_state[0]_inv_i_4_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(rst),
        .I5(reading_in_progress_reg_n_0),
        .O(reading_in_progress_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reading_in_progress_i_2
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .O(reading_in_progress_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reading_in_progress_reg
       (.C(clk),
        .CE(1'b1),
        .D(reading_in_progress_i_1_n_0),
        .Q(reading_in_progress_reg_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout0_carry
       (.CI(1'b0),
        .CO({timeout0_carry_n_0,timeout0_carry_n_1,timeout0_carry_n_2,timeout0_carry_n_3}),
        .CYINIT(timeout0_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({timeout0_carry_i_2__0_n_0,timeout0_carry_i_3__1_n_0,timeout0_carry_i_4__0_n_0,timeout0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout0_carry__0
       (.CI(timeout0_carry_n_0),
        .CO({timeout0_carry__0_n_0,timeout0_carry__0_n_1,timeout0_carry__0_n_2,timeout0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({timeout0_carry_i_1__1_n_0,timeout0_carry_i_2_n_0,timeout0_carry_i_3_n_0,timeout0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout0_carry__1
       (.CI(timeout0_carry__0_n_0),
        .CO({timeout0_carry__1_n_0,timeout0_carry__1_n_1,timeout0_carry__1_n_2,timeout0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({timeout0_carry_i_1__0_n_0,timeout0_carry_i_2__1_n_0,timeout0_carry_i_3__0_n_0,timeout0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timeout0_carry__2
       (.CI(timeout0_carry__1_n_0),
        .CO(NLW_timeout0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timeout0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,timeout0_carry_i_1__2_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_1
       (.I0(\timeout_reg_n_0_[0] ),
        .I1(reading_in_progress_reg_n_0),
        .O(timeout0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_1__0
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[12] ),
        .O(timeout0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_1__1
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[8] ),
        .O(timeout0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_1__2
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[13] ),
        .O(timeout0_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_2
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[7] ),
        .O(timeout0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_2__0
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[4] ),
        .O(timeout0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_2__1
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[11] ),
        .O(timeout0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_3
       (.I0(\timeout_reg_n_0_[6] ),
        .I1(reading_in_progress_reg_n_0),
        .O(timeout0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_3__0
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[10] ),
        .O(timeout0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_3__1
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[3] ),
        .O(timeout0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_4
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[5] ),
        .O(timeout0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_4__0
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[2] ),
        .O(timeout0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_4__1
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[9] ),
        .O(timeout0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timeout0_carry_i_5
       (.I0(reading_in_progress_reg_n_0),
        .I1(\timeout_reg_n_0_[1] ),
        .O(timeout0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000554555455545)) 
    \timeout[0]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(reading_in_progress_reg_n_0),
        .I5(\timeout_reg_n_0_[0] ),
        .O(timeout[0]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[10]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[10]),
        .O(timeout[10]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[11]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[11]),
        .O(timeout[11]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[12]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[12]),
        .O(timeout[12]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[13]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[13]),
        .O(timeout[13]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \timeout[13]_i_2 
       (.I0(\timeout_reg_n_0_[3] ),
        .I1(\timeout_reg_n_0_[13] ),
        .I2(\timeout_reg_n_0_[12] ),
        .I3(\timeout_reg_n_0_[4] ),
        .I4(reading_in_progress_reg_n_0),
        .I5(\timeout_reg_n_0_[5] ),
        .O(\timeout[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \timeout[13]_i_3 
       (.I0(\timeout_reg_n_0_[8] ),
        .I1(\timeout_reg_n_0_[11] ),
        .I2(\timeout_reg_n_0_[7] ),
        .I3(\timeout_reg_n_0_[0] ),
        .O(\timeout[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \timeout[13]_i_4 
       (.I0(\timeout_reg_n_0_[9] ),
        .I1(\timeout_reg_n_0_[10] ),
        .I2(\timeout_reg_n_0_[1] ),
        .I3(reading_in_progress_reg_n_0),
        .I4(\timeout_reg_n_0_[2] ),
        .I5(\timeout_reg_n_0_[6] ),
        .O(\timeout[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[1]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[1]),
        .O(timeout[1]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[2]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[2]),
        .O(timeout[2]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[3]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[3]),
        .O(timeout[3]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[4]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[4]),
        .O(timeout[4]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[5]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[5]),
        .O(timeout[5]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[6]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[6]),
        .O(timeout[6]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[7]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[7]),
        .O(timeout[7]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[8]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[8]),
        .O(timeout[8]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \timeout[9]_i_1 
       (.I0(state__0[1]),
        .I1(\timeout[13]_i_2_n_0 ),
        .I2(\timeout[13]_i_3_n_0 ),
        .I3(\timeout[13]_i_4_n_0 ),
        .I4(data0[9]),
        .O(timeout[9]));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[0] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[0]),
        .Q(\timeout_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[10] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[10]),
        .Q(\timeout_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[11] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[11]),
        .Q(\timeout_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[12] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[12]),
        .Q(\timeout_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[13] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[13]),
        .Q(\timeout_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[1] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[1]),
        .Q(\timeout_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[2] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[2]),
        .Q(\timeout_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[3] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[3]),
        .Q(\timeout_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[4] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[4]),
        .Q(\timeout_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[5] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[5]),
        .Q(\timeout_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[6] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[6]),
        .Q(\timeout_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[7] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[7]),
        .Q(\timeout_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[8] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[8]),
        .Q(\timeout_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_reg[9] 
       (.C(clk),
        .CE(state__0[0]),
        .D(timeout[9]),
        .Q(\timeout_reg_n_0_[9] ),
        .R(rst));
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
