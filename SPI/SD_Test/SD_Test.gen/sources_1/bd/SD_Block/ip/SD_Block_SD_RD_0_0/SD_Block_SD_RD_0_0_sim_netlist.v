// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Aug  6 12:05:14 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_SD_RD_0_0/SD_Block_SD_RD_0_0_sim_netlist.v
// Design      : SD_Block_SD_RD_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SD_Block_SD_RD_0_0,SD_RD,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SD_RD,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module SD_Block_SD_RD_0_0
   (clk,
    rst,
    start,
    cs_n,
    sck,
    mosi,
    miso,
    done,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  output cs_n;
  output sck;
  output mosi;
  input miso;
  output done;
  output [7:0]data_out;

  wire \<const0> ;
  wire clk;
  wire cs_n;
  wire [7:0]data_out;
  wire done;
  wire miso;
  wire mosi;
  wire rst;
  wire start;

  assign sck = \<const0> ;
  GND GND
       (.G(\<const0> ));
  SD_Block_SD_RD_0_0_SD_RD U0
       (.clk(clk),
        .cs_n(cs_n),
        .data_out(data_out),
        .done(done),
        .miso(miso),
        .mosi(mosi),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "SD_RD" *) 
module SD_Block_SD_RD_0_0_SD_RD
   (data_out,
    cs_n,
    mosi,
    done,
    rst,
    start,
    clk,
    miso);
  output [7:0]data_out;
  output cs_n;
  output mosi;
  output done;
  input rst;
  input start;
  input clk;
  input miso;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [2:1]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[0]_i_2_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_4_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire [7:0]byte_buf;
  wire \byte_buf[0]_i_1_n_0 ;
  wire \byte_buf[1]_i_1_n_0 ;
  wire \byte_buf[2]_i_1_n_0 ;
  wire \byte_buf[3]_i_1_n_0 ;
  wire \byte_buf[4]_i_1_n_0 ;
  wire \byte_buf[5]_i_1_n_0 ;
  wire \byte_buf[6]_i_1_n_0 ;
  wire \byte_buf[7]_i_1_n_0 ;
  wire \byte_buf[7]_i_2_n_0 ;
  wire clk;
  wire clk_div;
  wire clk_div_i_1_n_0;
  wire cs_n;
  wire cs_n_i_1_n_0;
  wire [7:0]data_out;
  wire \data_out[7]_i_1_n_0 ;
  wire done;
  wire done_i_1_n_0;
  wire miso;
  wire mosi;
  wire mosi1_out;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire rst;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[0]_i_2_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[1]_i_2_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire start;
  wire [2:0]state__0;

  LUT6 #(
    .INIT(64'hAAAAA5AAA5AAE4AA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(start),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(clk_div),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAFDF2020)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(clk_div),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAF20FF00)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(clk_div),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h010101FF5F5F5F00)) 
    \bit_cnt[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\bit_cnt[2]_i_3_n_0 ),
        .I4(\bit_cnt[0]_i_2_n_0 ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060606000)) 
    \bit_cnt[0]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(clk_div),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[1]),
        .I1(\bit_cnt[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(clk_div),
        .I4(\bit_cnt[2]_i_4_n_0 ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5F01015F)) 
    \bit_cnt[1]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .O(bit_cnt[1]));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[2]),
        .I1(\bit_cnt[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(clk_div),
        .I4(\bit_cnt[2]_i_4_n_0 ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F010101015F)) 
    \bit_cnt[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(bit_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CC0CC8)) 
    \bit_cnt[2]_i_3 
       (.I0(start),
        .I1(clk_div),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\bit_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[2]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\bit_cnt[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \byte_buf[0]_i_1 
       (.I0(miso),
        .I1(\byte_buf[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(byte_buf[0]),
        .O(\byte_buf[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \byte_buf[1]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\byte_buf[7]_i_2_n_0 ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(byte_buf[1]),
        .O(\byte_buf[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \byte_buf[2]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[2]),
        .O(\byte_buf[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \byte_buf[3]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[3]),
        .O(\byte_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \byte_buf[4]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[4]),
        .O(\byte_buf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \byte_buf[5]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[5]),
        .O(\byte_buf[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \byte_buf[6]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[6]),
        .O(\byte_buf[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \byte_buf[7]_i_1 
       (.I0(miso),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\byte_buf[7]_i_2_n_0 ),
        .I5(byte_buf[7]),
        .O(\byte_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \byte_buf[7]_i_2 
       (.I0(state__0[0]),
        .I1(clk_div),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(rst),
        .O(\byte_buf[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[0]_i_1_n_0 ),
        .Q(byte_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[1]_i_1_n_0 ),
        .Q(byte_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[2]_i_1_n_0 ),
        .Q(byte_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[3]_i_1_n_0 ),
        .Q(byte_buf[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[4]_i_1_n_0 ),
        .Q(byte_buf[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[5]_i_1_n_0 ),
        .Q(byte_buf[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[6]_i_1_n_0 ),
        .Q(byte_buf[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[7]_i_1_n_0 ),
        .Q(byte_buf[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    clk_div_i_1
       (.I0(rst),
        .I1(clk_div),
        .O(clk_div_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFFFF08080000)) 
    cs_n_i_1
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(start),
        .I4(clk_div),
        .I5(cs_n),
        .O(cs_n_i_1_n_0));
  FDSE cs_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_n_i_1_n_0),
        .Q(cs_n),
        .S(rst));
  LUT5 #(
    .INIT(32'h04000000)) 
    \data_out[7]_i_1 
       (.I0(state__0[0]),
        .I1(clk_div),
        .I2(rst),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\data_out[7]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(byte_buf[7]),
        .Q(data_out[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    done_i_1
       (.I0(state__0[0]),
        .I1(clk_div),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(done),
        .O(done_i_1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(rst));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    mosi_i_1
       (.I0(\shift_reg_reg_n_0_[1] ),
        .I1(mosi_i_2_n_0),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\shift_reg_reg_n_0_[0] ),
        .I4(mosi1_out),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mosi_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .O(mosi_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3600)) 
    mosi_i_3
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(clk_div),
        .O(mosi1_out));
  FDRE mosi_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(mosi),
        .R(rst));
  LUT5 #(
    .INIT(32'hDFFF1000)) 
    \shift_reg[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(clk_div),
        .I3(\shift_reg[0]_i_2_n_0 ),
        .I4(\shift_reg_reg_n_0_[0] ),
        .O(\shift_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h010101FF01010100)) 
    \shift_reg[0]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(start),
        .O(\shift_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFF00400040)) 
    \shift_reg[1]_i_1 
       (.I0(state__0[2]),
        .I1(clk_div),
        .I2(start),
        .I3(\shift_reg[1]_i_2_n_0 ),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(\shift_reg_reg_n_0_[1] ),
        .O(\shift_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \shift_reg[1]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\shift_reg[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ),
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
