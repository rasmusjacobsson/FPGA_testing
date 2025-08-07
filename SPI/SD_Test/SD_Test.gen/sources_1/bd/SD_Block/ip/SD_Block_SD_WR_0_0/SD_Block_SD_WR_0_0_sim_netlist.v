// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Aug  6 12:04:30 2025
// Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_SD_WR_0_0/SD_Block_SD_WR_0_0_sim_netlist.v
// Design      : SD_Block_SD_WR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SD_Block_SD_WR_0_0,SD_WR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SD_WR,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module SD_Block_SD_WR_0_0
   (clk,
    rst,
    start,
    sck,
    mosi,
    miso,
    cs,
    done_flag);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  output sck;
  output mosi;
  input miso;
  output cs;
  output done_flag;

  wire clk;
  wire cs;
  wire done_flag;
  wire mosi;
  wire rst;
  wire sck;
  wire start;

  SD_Block_SD_WR_0_0_SD_WR U0
       (.clk(clk),
        .cs(cs),
        .done_flag(done_flag),
        .mosi(mosi),
        .rst(rst),
        .sck_i_reg_0(sck),
        .start(start));
endmodule

(* ORIG_REF_NAME = "SD_WR" *) 
module SD_Block_SD_WR_0_0_SD_WR
   (sck_i_reg_0,
    cs,
    done_flag,
    mosi,
    start,
    rst,
    clk);
  output sck_i_reg_0;
  output cs;
  output done_flag;
  output mosi;
  input start;
  input rst;
  input clk;

  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire byte_buf;
  wire \byte_buf[0]_i_1_n_0 ;
  wire \byte_buf[1]_i_1_n_0 ;
  wire \byte_buf[1]_i_2_n_0 ;
  wire \byte_buf[1]_i_3_n_0 ;
  wire \byte_buf[2]_i_1_n_0 ;
  wire \byte_buf[2]_i_2_n_0 ;
  wire \byte_buf[2]_i_3_n_0 ;
  wire \byte_buf[2]_i_4_n_0 ;
  wire \byte_buf[2]_i_5_n_0 ;
  wire \byte_buf[3]_i_1_n_0 ;
  wire \byte_buf[4]_i_1_n_0 ;
  wire \byte_buf[5]_i_1_n_0 ;
  wire \byte_buf[6]_i_1_n_0 ;
  wire \byte_buf[6]_i_2_n_0 ;
  wire \byte_buf[7]_i_2_n_0 ;
  wire \byte_buf[7]_i_3_n_0 ;
  wire \byte_buf[7]_i_4_n_0 ;
  wire clk;
  wire cs;
  wire cs_i_i_1_n_0;
  wire cs_i_i_2_n_0;
  wire cs_i_i_3_n_0;
  wire cs_i_i_4_n_0;
  wire [7:1]data0;
  wire done_flag;
  wire done_flag_i_i_1_n_0;
  wire mosi;
  wire mosi_i;
  wire mosi_i_i_1_n_0;
  wire p_0_in;
  wire rst;
  wire sck_i_i_1_n_0;
  wire sck_i_i_2_n_0;
  wire sck_i_reg_0;
  wire start;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000E266)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt[0]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(start),
        .I3(\state_reg_n_0_[3] ),
        .I4(rst),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE6A226A)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[1]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(bit_cnt[0]),
        .I3(\state_reg_n_0_[3] ),
        .I4(start),
        .I5(rst),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAE62A26)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[2]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\bit_cnt[2]_i_3_n_0 ),
        .I4(start),
        .I5(rst),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00010001FFF00000)) 
    \bit_cnt[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(start),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(sck_i_reg_0),
        .I5(\state_reg_n_0_[3] ),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bit_cnt[2]_i_3 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .O(\bit_cnt[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF040004)) 
    \byte_buf[0]_i_1 
       (.I0(cs_i_i_3_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(start),
        .O(\byte_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F0F8)) 
    \byte_buf[1]_i_1 
       (.I0(data0[1]),
        .I1(\byte_buf[1]_i_2_n_0 ),
        .I2(\byte_buf[1]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(start),
        .O(\byte_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    \byte_buf[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .O(\byte_buf[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0800000F)) 
    \byte_buf[1]_i_3 
       (.I0(data0[1]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\byte_buf[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFF4FFF4)) 
    \byte_buf[2]_i_1 
       (.I0(cs_i_i_3_n_0),
        .I1(\byte_buf[7]_i_4_n_0 ),
        .I2(\byte_buf[2]_i_2_n_0 ),
        .I3(\byte_buf[2]_i_3_n_0 ),
        .I4(\byte_buf[2]_i_4_n_0 ),
        .I5(\byte_buf[2]_i_5_n_0 ),
        .O(\byte_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \byte_buf[2]_i_2 
       (.I0(start),
        .I1(\state_reg_n_0_[3] ),
        .O(\byte_buf[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \byte_buf[2]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\byte_buf[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F007F7FFFFF)) 
    \byte_buf[2]_i_4 
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\byte_buf[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_buf[2]_i_5 
       (.I0(data0[2]),
        .I1(\state_reg_n_0_[3] ),
        .O(\byte_buf[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \byte_buf[3]_i_1 
       (.I0(\byte_buf[6]_i_2_n_0 ),
        .I1(data0[3]),
        .I2(\state_reg_n_0_[3] ),
        .I3(start),
        .O(\byte_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \byte_buf[4]_i_1 
       (.I0(\byte_buf[6]_i_2_n_0 ),
        .I1(data0[4]),
        .I2(\state_reg_n_0_[3] ),
        .I3(start),
        .O(\byte_buf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF088F088FFFFF088)) 
    \byte_buf[5]_i_1 
       (.I0(\byte_buf[7]_i_3_n_0 ),
        .I1(data0[5]),
        .I2(start),
        .I3(\state_reg_n_0_[3] ),
        .I4(\byte_buf[7]_i_4_n_0 ),
        .I5(cs_i_i_3_n_0),
        .O(\byte_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \byte_buf[6]_i_1 
       (.I0(\byte_buf[6]_i_2_n_0 ),
        .I1(data0[6]),
        .I2(\state_reg_n_0_[3] ),
        .I3(start),
        .O(\byte_buf[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7F7F7F00FF00)) 
    \byte_buf[6]_i_2 
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\byte_buf[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444544454445444A)) 
    \byte_buf[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(sck_i_reg_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(start),
        .I5(\state_reg_n_0_[1] ),
        .O(byte_buf));
  LUT6 #(
    .INIT(64'hF088F088FFFFF088)) 
    \byte_buf[7]_i_2 
       (.I0(\byte_buf[7]_i_3_n_0 ),
        .I1(data0[7]),
        .I2(start),
        .I3(\state_reg_n_0_[3] ),
        .I4(\byte_buf[7]_i_4_n_0 ),
        .I5(cs_i_i_3_n_0),
        .O(\byte_buf[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7FFFFF7F0000)) 
    \byte_buf[7]_i_3 
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\byte_buf[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \byte_buf[7]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\byte_buf[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[0] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[0]_i_1_n_0 ),
        .Q(data0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[1] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[1]_i_1_n_0 ),
        .Q(data0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[2] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[2]_i_1_n_0 ),
        .Q(data0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[3] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[3]_i_1_n_0 ),
        .Q(data0[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[4] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[4]_i_1_n_0 ),
        .Q(data0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[5] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[5]_i_1_n_0 ),
        .Q(data0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[6] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[6]_i_1_n_0 ),
        .Q(data0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[7] 
       (.C(clk),
        .CE(byte_buf),
        .D(\byte_buf[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAE00A2)) 
    cs_i_i_1
       (.I0(cs),
        .I1(cs_i_i_2_n_0),
        .I2(cs_i_i_3_n_0),
        .I3(cs_i_i_4_n_0),
        .I4(sck_i_i_2_n_0),
        .I5(rst),
        .O(cs_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08000008)) 
    cs_i_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(sck_i_reg_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(cs_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    cs_i_i_3
       (.I0(bit_cnt[1]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .O(cs_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01010100)) 
    cs_i_i_4
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(start),
        .O(cs_i_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    cs_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_i_i_1_n_0),
        .Q(cs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    done_flag_i_i_1
       (.I0(start),
        .I1(rst),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(sck_i_i_2_n_0),
        .I5(done_flag),
        .O(done_flag_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_flag_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_flag_i_i_1_n_0),
        .Q(done_flag),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E2EEE222)) 
    mosi_i_i_1
       (.I0(mosi),
        .I1(mosi_i),
        .I2(start),
        .I3(\state_reg_n_0_[3] ),
        .I4(p_0_in),
        .I5(rst),
        .O(mosi_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F0F0F10)) 
    mosi_i_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(start),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(mosi_i));
  FDRE #(
    .INIT(1'b0)) 
    mosi_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_i_i_1_n_0),
        .Q(mosi),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000A6A6A686)) 
    sck_i_i_1
       (.I0(sck_i_reg_0),
        .I1(sck_i_i_2_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(start),
        .I4(\state_reg_n_0_[1] ),
        .I5(rst),
        .O(sck_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sck_i_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(sck_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sck_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(sck_i_i_1_n_0),
        .Q(sck_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFBEBEF0F0BEBE)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(start),
        .I2(\state_reg_n_0_[3] ),
        .I3(cs_i_i_3_n_0),
        .I4(sck_i_i_2_n_0),
        .I5(sck_i_reg_0),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(state),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(state),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(state),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(state),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
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
