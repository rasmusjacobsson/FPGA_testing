// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 08:01:08 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0_sim_netlist.v
// Design      : I2C_Test_I2Cmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_Test_I2Cmod_0_0,I2Cmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2Cmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module I2C_Test_I2Cmod_0_0
   (sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    sysclk,
    reset_n,
    ena,
    addr,
    rw,
    data_wr,
    busy,
    data_rd,
    ack_error);
  input sda_i;
  output sda_o;
  output sda_t;
  input scl_i;
  output scl_o;
  output scl_t;
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input ena;
  input [6:0]addr;
  input rw;
  input [7:0]data_wr;
  output busy;
  output [7:0]data_rd;
  output ack_error;

  wire \<const0> ;
  wire ack_error;
  wire [6:0]addr;
  wire busy;
  wire [7:0]data_rd;
  wire [7:0]data_wr;
  wire ena;
  wire reset_n;
  wire rw;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;
  wire sysclk;

  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  I2C_Test_I2Cmod_0_0_I2Cmod U0
       (.D({addr,rw}),
        .ack_error(ack_error),
        .busy(busy),
        .data_rd(data_rd),
        .data_wr(data_wr),
        .ena(ena),
        .reset_n(reset_n),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "I2Cmod" *) 
module I2C_Test_I2Cmod_0_0_I2Cmod
   (data_rd,
    scl_t,
    ack_error,
    sda_t,
    busy,
    ena,
    reset_n,
    sysclk,
    D,
    data_wr,
    sda_i,
    scl_i);
  output [7:0]data_rd;
  output scl_t;
  output ack_error;
  output sda_t;
  output busy;
  input ena;
  input reset_n;
  input sysclk;
  input [7:0]D;
  input [7:0]data_wr;
  input sda_i;
  input scl_i;

  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire ack_error;
  wire ack_error_int_i_1_n_0;
  wire ack_error_int_i_2_n_0;
  wire [7:0]addr_rw;
  wire addr_rw0;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire busy;
  wire busy1;
  wire busy4_out;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_i_3_n_0;
  wire busy_i_5_n_0;
  wire busy_i_6_n_0;
  wire [4:0]count;
  wire [4:0]count_0;
  wire data_clk__0;
  wire data_clk_i_1_n_0;
  wire data_clk_n_0;
  wire data_clk_prev;
  wire data_clk_prev_i_1_n_0;
  wire [7:0]data_rd;
  wire \data_rd[7]_i_1_n_0 ;
  wire [7:0]data_rx;
  wire \data_rx[0]_i_1_n_0 ;
  wire \data_rx[0]_i_2_n_0 ;
  wire \data_rx[1]_i_1_n_0 ;
  wire \data_rx[2]_i_1_n_0 ;
  wire \data_rx[3]_i_1_n_0 ;
  wire \data_rx[4]_i_1_n_0 ;
  wire \data_rx[4]_i_2_n_0 ;
  wire \data_rx[5]_i_1_n_0 ;
  wire \data_rx[5]_i_2_n_0 ;
  wire \data_rx[6]_i_1_n_0 ;
  wire \data_rx[6]_i_2_n_0 ;
  wire \data_rx[7]_i_1_n_0 ;
  wire \data_rx[7]_i_2_n_0 ;
  wire [7:0]data_tx;
  wire [7:0]data_wr;
  wire ena;
  wire reset_n;
  wire scl_clk;
  wire scl_clk_i_1_n_0;
  wire scl_ena_i_1_n_0;
  wire scl_ena_reg_n_0;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_int_i_11_n_0;
  wire sda_int_i_12_n_0;
  wire sda_int_i_13_n_0;
  wire sda_int_i_14_n_0;
  wire sda_int_i_15_n_0;
  wire sda_int_i_16_n_0;
  wire sda_int_i_17_n_0;
  wire sda_int_i_18_n_0;
  wire sda_int_i_19_n_0;
  wire sda_int_i_1_n_0;
  wire sda_int_i_20_n_0;
  wire sda_int_i_21_n_0;
  wire sda_int_i_2_n_0;
  wire sda_int_i_3_n_0;
  wire sda_int_i_4_n_0;
  wire sda_int_i_5_n_0;
  wire sda_int_i_6_n_0;
  wire sda_int_i_8_n_0;
  wire sda_int_i_9_n_0;
  wire sda_int_reg_i_10_n_0;
  wire sda_int_reg_i_7_n_0;
  wire sda_int_reg_n_0;
  wire sda_t;
  wire stretch__0;
  wire stretch_i_1_n_0;
  wire stretch_n_0;
  wire sysclk;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ena),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE00AA00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(ena),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(addr_rw[7]),
        .I1(D[7]),
        .I2(addr_rw[6]),
        .I3(D[6]),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
        .I5(\FSM_onehot_state[1]_i_4_n_0 ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(D[0]),
        .I1(addr_rw[0]),
        .I2(addr_rw[2]),
        .I3(D[2]),
        .I4(addr_rw[1]),
        .I5(D[1]),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(D[3]),
        .I1(addr_rw[3]),
        .I2(addr_rw[4]),
        .I3(D[4]),
        .I4(addr_rw[5]),
        .I5(D[5]),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(addr_rw[0]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(ena),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(ena),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(addr_rw[0]),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(data_clk__0),
        .I1(data_clk_prev),
        .O(busy1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(busy1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(busy_i_2_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,write:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,read:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sysclk),
        .CE(busy1),
        .CLR(busy_i_2_n_0),
        .D(\FSM_onehot_state[8]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'hFFFFFBFF40404040)) 
    ack_error_int_i_1
       (.I0(data_clk__0),
        .I1(data_clk_prev),
        .I2(ack_error_int_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(scl_ena_reg_n_0),
        .I5(ack_error),
        .O(ack_error_int_i_1_n_0));
  LUT4 #(
    .INIT(16'hEEE0)) 
    ack_error_int_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(sda_i),
        .I3(ack_error),
        .O(ack_error_int_i_2_n_0));
  FDCE ack_error_int_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(ack_error_int_i_1_n_0),
        .Q(ack_error));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \addr_rw[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ena),
        .I4(reset_n),
        .I5(busy1),
        .O(addr_rw0));
  FDRE \addr_rw_reg[0] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[0]),
        .Q(addr_rw[0]),
        .R(1'b0));
  FDRE \addr_rw_reg[1] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[1]),
        .Q(addr_rw[1]),
        .R(1'b0));
  FDRE \addr_rw_reg[2] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[2]),
        .Q(addr_rw[2]),
        .R(1'b0));
  FDRE \addr_rw_reg[3] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[3]),
        .Q(addr_rw[3]),
        .R(1'b0));
  FDRE \addr_rw_reg[4] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[4]),
        .Q(addr_rw[4]),
        .R(1'b0));
  FDRE \addr_rw_reg[5] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[5]),
        .Q(addr_rw[5]),
        .R(1'b0));
  FDRE \addr_rw_reg[6] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[6]),
        .Q(addr_rw[6]),
        .R(1'b0));
  FDRE \addr_rw_reg[7] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(D[7]),
        .Q(addr_rw[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF01FF0000FE00)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(data_clk__0),
        .I4(data_clk_prev),
        .I5(bit_cnt[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF44444440)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[0]),
        .I1(busy1),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(bit_cnt[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777F44444440)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt[2]_i_2_n_0 ),
        .I1(busy1),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(bit_cnt[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \bit_cnt[2]_i_2 
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .O(\bit_cnt[2]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .PRE(busy_i_2_n_0),
        .Q(bit_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .PRE(busy_i_2_n_0),
        .Q(bit_cnt[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .PRE(busy_i_2_n_0),
        .Q(bit_cnt[2]));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    busy_i_1
       (.I0(busy_i_3_n_0),
        .I1(ena),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(busy4_out),
        .I5(busy),
        .O(busy_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_2
       (.I0(reset_n),
        .O(busy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    busy_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(busy_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    busy_i_4
       (.I0(busy1),
        .I1(busy_i_5_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(busy_i_6_n_0),
        .O(busy4_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    busy_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(busy_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    busy_i_6
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(ena),
        .O(busy_i_6_n_0));
  FDPE busy_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(busy_i_2_n_0),
        .Q(busy));
  LUT6 #(
    .INIT(64'hA5A5A5A525A5A5A5)) 
    \count[0]_i_1 
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'h9C9C9C9C1C9C9C9C)) 
    \count[1]_i_1 
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hBFBFBFBF00404040)) 
    \count[2]_i_1 
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(count_0[2]));
  LUT6 #(
    .INIT(64'hBFBF40403FFF0000)) 
    \count[3]_i_1 
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hBF40FF003F00FF00)) 
    \count[4]_i_1 
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(count_0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(count_0[4]),
        .Q(count[4]));
  LUT6 #(
    .INIT(64'h1E1C1C3C1E1E1C1C)) 
    data_clk
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[4]),
        .I3(count[0]),
        .I4(count[1]),
        .I5(stretch__0),
        .O(data_clk_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_clk_i_1
       (.I0(data_clk_n_0),
        .I1(reset_n),
        .I2(data_clk__0),
        .O(data_clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_clk_prev_i_1
       (.I0(data_clk__0),
        .I1(reset_n),
        .I2(data_clk_prev),
        .O(data_clk_prev_i_1_n_0));
  FDRE data_clk_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(data_clk_prev_i_1_n_0),
        .Q(data_clk_prev),
        .R(1'b0));
  FDRE data_clk_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(data_clk_i_1_n_0),
        .Q(data_clk__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \data_rd[7]_i_1 
       (.I0(data_clk_prev),
        .I1(data_clk__0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(bit_cnt[2]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[0]),
        .O(\data_rd[7]_i_1_n_0 ));
  FDCE \data_rd_reg[0] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[0]),
        .Q(data_rd[0]));
  FDCE \data_rd_reg[1] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[1]),
        .Q(data_rd[1]));
  FDCE \data_rd_reg[2] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[2]),
        .Q(data_rd[2]));
  FDCE \data_rd_reg[3] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[3]),
        .Q(data_rd[3]));
  FDCE \data_rd_reg[4] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[4]),
        .Q(data_rd[4]));
  FDCE \data_rd_reg[5] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[5]),
        .Q(data_rd[5]));
  FDCE \data_rd_reg[6] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[6]),
        .Q(data_rd[6]));
  FDCE \data_rd_reg[7] 
       (.C(sysclk),
        .CE(\data_rd[7]_i_1_n_0 ),
        .CLR(busy_i_2_n_0),
        .D(data_rx[7]),
        .Q(data_rd[7]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \data_rx[0]_i_1 
       (.I0(sda_i),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(reset_n),
        .I3(\data_rx[0]_i_2_n_0 ),
        .I4(data_rx[0]),
        .O(\data_rx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \data_rx[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(data_clk__0),
        .I2(data_clk_prev),
        .O(\data_rx[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \data_rx[1]_i_1 
       (.I0(sda_i),
        .I1(\data_rx[5]_i_2_n_0 ),
        .I2(reset_n),
        .I3(bit_cnt[2]),
        .I4(data_rx[1]),
        .O(\data_rx[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \data_rx[2]_i_1 
       (.I0(sda_i),
        .I1(\data_rx[6]_i_2_n_0 ),
        .I2(reset_n),
        .I3(bit_cnt[2]),
        .I4(data_rx[2]),
        .O(\data_rx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \data_rx[3]_i_1 
       (.I0(sda_i),
        .I1(\data_rx[7]_i_2_n_0 ),
        .I2(reset_n),
        .I3(bit_cnt[2]),
        .I4(data_rx[3]),
        .O(\data_rx[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_rx[4]_i_1 
       (.I0(sda_i),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(\data_rx[4]_i_2_n_0 ),
        .I5(data_rx[4]),
        .O(\data_rx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \data_rx[4]_i_2 
       (.I0(data_clk_prev),
        .I1(data_clk__0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(reset_n),
        .O(\data_rx[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_rx[5]_i_1 
       (.I0(sda_i),
        .I1(bit_cnt[2]),
        .I2(reset_n),
        .I3(\data_rx[5]_i_2_n_0 ),
        .I4(data_rx[5]),
        .O(\data_rx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \data_rx[5]_i_2 
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(data_clk_prev),
        .I3(data_clk__0),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_rx[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_rx[6]_i_1 
       (.I0(sda_i),
        .I1(bit_cnt[2]),
        .I2(reset_n),
        .I3(\data_rx[6]_i_2_n_0 ),
        .I4(data_rx[6]),
        .O(\data_rx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \data_rx[6]_i_2 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(data_clk_prev),
        .I3(data_clk__0),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_rx[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_rx[7]_i_1 
       (.I0(sda_i),
        .I1(bit_cnt[2]),
        .I2(reset_n),
        .I3(\data_rx[7]_i_2_n_0 ),
        .I4(data_rx[7]),
        .O(\data_rx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \data_rx[7]_i_2 
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(data_clk_prev),
        .I3(data_clk__0),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_rx[7]_i_2_n_0 ));
  FDRE \data_rx_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[0]_i_1_n_0 ),
        .Q(data_rx[0]),
        .R(1'b0));
  FDRE \data_rx_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[1]_i_1_n_0 ),
        .Q(data_rx[1]),
        .R(1'b0));
  FDRE \data_rx_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[2]_i_1_n_0 ),
        .Q(data_rx[2]),
        .R(1'b0));
  FDRE \data_rx_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[3]_i_1_n_0 ),
        .Q(data_rx[3]),
        .R(1'b0));
  FDRE \data_rx_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[4]_i_1_n_0 ),
        .Q(data_rx[4]),
        .R(1'b0));
  FDRE \data_rx_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[5]_i_1_n_0 ),
        .Q(data_rx[5]),
        .R(1'b0));
  FDRE \data_rx_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[6]_i_1_n_0 ),
        .Q(data_rx[6]),
        .R(1'b0));
  FDRE \data_rx_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\data_rx[7]_i_1_n_0 ),
        .Q(data_rx[7]),
        .R(1'b0));
  FDRE \data_tx_reg[0] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[0]),
        .Q(data_tx[0]),
        .R(1'b0));
  FDRE \data_tx_reg[1] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[1]),
        .Q(data_tx[1]),
        .R(1'b0));
  FDRE \data_tx_reg[2] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[2]),
        .Q(data_tx[2]),
        .R(1'b0));
  FDRE \data_tx_reg[3] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[3]),
        .Q(data_tx[3]),
        .R(1'b0));
  FDRE \data_tx_reg[4] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[4]),
        .Q(data_tx[4]),
        .R(1'b0));
  FDRE \data_tx_reg[5] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[5]),
        .Q(data_tx[5]),
        .R(1'b0));
  FDRE \data_tx_reg[6] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[6]),
        .Q(data_tx[6]),
        .R(1'b0));
  FDRE \data_tx_reg[7] 
       (.C(sysclk),
        .CE(addr_rw0),
        .D(data_wr[7]),
        .Q(data_tx[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAA0000)) 
    scl_clk_i_1
       (.I0(count_0[4]),
        .I1(count_0[3]),
        .I2(count_0[1]),
        .I3(count_0[2]),
        .I4(reset_n),
        .I5(scl_clk),
        .O(scl_clk_i_1_n_0));
  FDRE scl_clk_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(scl_clk_i_1_n_0),
        .Q(scl_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFB40FF40)) 
    scl_ena_i_1
       (.I0(data_clk__0),
        .I1(data_clk_prev),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(scl_ena_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .O(scl_ena_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_ena_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(scl_ena_i_1_n_0),
        .Q(scl_ena_reg_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    scl_t_INST_0
       (.I0(scl_clk),
        .I1(scl_ena_reg_n_0),
        .O(scl_t));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    sda_int_i_1
       (.I0(sda_int_i_2_n_0),
        .I1(sda_int_i_3_n_0),
        .I2(sda_int_i_4_n_0),
        .I3(busy1),
        .I4(sda_int_i_5_n_0),
        .I5(sda_int_reg_n_0),
        .O(sda_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h0C0C0E0C000C0E00)) 
    sda_int_i_11
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(sda_int_i_19_n_0),
        .I3(sda_int_i_20_n_0),
        .I4(bit_cnt[2]),
        .I5(sda_int_i_21_n_0),
        .O(sda_int_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    sda_int_i_12
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[2]),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_int_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_13
       (.I0(data_tx[3]),
        .I1(data_tx[2]),
        .I2(bit_cnt[1]),
        .I3(data_tx[1]),
        .I4(bit_cnt[0]),
        .I5(data_tx[0]),
        .O(sda_int_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_14
       (.I0(data_tx[7]),
        .I1(data_tx[6]),
        .I2(bit_cnt[1]),
        .I3(data_tx[5]),
        .I4(bit_cnt[0]),
        .I5(data_tx[4]),
        .O(sda_int_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_15
       (.I0(data_wr[3]),
        .I1(data_wr[2]),
        .I2(bit_cnt[1]),
        .I3(data_wr[1]),
        .I4(bit_cnt[0]),
        .I5(data_wr[0]),
        .O(sda_int_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_16
       (.I0(data_wr[7]),
        .I1(data_wr[6]),
        .I2(bit_cnt[1]),
        .I3(data_wr[5]),
        .I4(bit_cnt[0]),
        .I5(data_wr[4]),
        .O(sda_int_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_17
       (.I0(addr_rw[3]),
        .I1(addr_rw[2]),
        .I2(bit_cnt[1]),
        .I3(addr_rw[1]),
        .I4(bit_cnt[0]),
        .I5(addr_rw[0]),
        .O(sda_int_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_18
       (.I0(addr_rw[7]),
        .I1(addr_rw[6]),
        .I2(bit_cnt[1]),
        .I3(addr_rw[5]),
        .I4(bit_cnt[0]),
        .I5(addr_rw[4]),
        .O(sda_int_i_18_n_0));
  LUT6 #(
    .INIT(64'h000C4400CC0C4400)) 
    sda_int_i_19
       (.I0(addr_rw[4]),
        .I1(bit_cnt[2]),
        .I2(addr_rw[5]),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .I5(addr_rw[6]),
        .O(sda_int_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF8AFF8AFF8A)) 
    sda_int_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(ena),
        .I3(sda_int_i_6_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(sda_int_reg_i_7_n_0),
        .O(sda_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sda_int_i_20
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .O(sda_int_i_20_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_int_i_21
       (.I0(addr_rw[0]),
        .I1(addr_rw[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(addr_rw[2]),
        .I5(addr_rw[3]),
        .O(sda_int_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFA280A280A280)) 
    sda_int_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(sda_int_i_8_n_0),
        .I3(sda_int_i_9_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sda_int_reg_i_10_n_0),
        .O(sda_int_i_3_n_0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEFEEE)) 
    sda_int_i_4
       (.I0(sda_int_i_11_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(addr_rw[0]),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(sda_int_i_4_n_0));
  LUT6 #(
    .INIT(64'h4444444400044444)) 
    sda_int_i_5
       (.I0(busy_i_3_n_0),
        .I1(sda_int_i_12_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(ena),
        .I5(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(sda_int_i_5_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    sda_int_i_6
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(sda_int_i_13_n_0),
        .I2(bit_cnt[2]),
        .I3(sda_int_i_14_n_0),
        .O(sda_int_i_6_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_int_i_8
       (.I0(data_tx[0]),
        .I1(data_tx[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(data_tx[2]),
        .I5(data_tx[3]),
        .O(sda_int_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_int_i_9
       (.I0(data_tx[4]),
        .I1(data_tx[5]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(data_tx[6]),
        .I5(data_tx[7]),
        .O(sda_int_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sda_int_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(sda_int_i_1_n_0),
        .PRE(busy_i_2_n_0),
        .Q(sda_int_reg_n_0));
  MUXF7 sda_int_reg_i_10
       (.I0(sda_int_i_17_n_0),
        .I1(sda_int_i_18_n_0),
        .O(sda_int_reg_i_10_n_0),
        .S(bit_cnt[2]));
  MUXF7 sda_int_reg_i_7
       (.I0(sda_int_i_15_n_0),
        .I1(sda_int_i_16_n_0),
        .O(sda_int_reg_i_7_n_0),
        .S(bit_cnt[2]));
  LUT4 #(
    .INIT(16'hFC2E)) 
    sda_t_INST_0
       (.I0(sda_int_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(data_clk_prev),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sda_t));
  LUT6 #(
    .INIT(64'h00DC02000000FF00)) 
    stretch
       (.I0(stretch__0),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[2]),
        .O(stretch_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    stretch_i_1
       (.I0(scl_i),
        .I1(stretch_n_0),
        .I2(stretch__0),
        .O(stretch_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stretch_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(busy_i_2_n_0),
        .D(stretch_i_1_n_0),
        .Q(stretch__0));
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
