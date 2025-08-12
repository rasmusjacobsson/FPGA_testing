// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug 12 19:06:26 2025
// Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rjaco/Documents/Skolgrejs/FPGA_testing/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_init_test/ip/SD_init_test_SD_init_0_1/SD_init_test_SD_init_0_1_sim_netlist.v
// Design      : SD_init_test_SD_init_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SD_init_test_SD_init_0_1,SD_init,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SD_init,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module SD_init_test_SD_init_0_1
   (clk,
    rst,
    sck,
    mosi,
    miso,
    cs,
    done,
    test_byte,
    test_DV,
    test_give_response);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output sck;
  output mosi;
  input miso;
  output cs;
  output done;
  output [7:0]test_byte;
  output test_DV;
  output test_give_response;

  wire clk;
  wire cs;
  wire done;
  wire miso;
  wire mosi;
  wire rst;
  wire sck;
  wire test_DV;
  wire [7:0]test_byte;
  wire test_give_response;

  SD_init_test_SD_init_0_1_SD_init U0
       (.clk(clk),
        .cs(cs),
        .done(done),
        .miso(miso),
        .mosi(mosi),
        .rst(rst),
        .sck_i_reg_0(sck),
        .test_DV(test_DV),
        .test_byte(test_byte),
        .test_give_response(test_give_response));
endmodule

(* ORIG_REF_NAME = "SD_init" *) 
module SD_init_test_SD_init_0_1_SD_init
   (sck_i_reg_0,
    cs,
    test_byte,
    mosi,
    test_DV,
    test_give_response,
    done,
    rst,
    clk,
    miso);
  output sck_i_reg_0;
  output cs;
  output [7:0]test_byte;
  output mosi;
  output test_DV;
  output test_give_response;
  output done;
  input rst;
  input clk;
  input miso;

  wire [31:1]CMD0_tries;
  wire \CMD0_tries[0]_i_1_n_0 ;
  wire \CMD0_tries[31]_i_3_n_0 ;
  wire \CMD0_tries[31]_i_4_n_0 ;
  wire CMD0_tries_0;
  wire \CMD0_tries_reg[12]_i_2_n_0 ;
  wire \CMD0_tries_reg[12]_i_2_n_1 ;
  wire \CMD0_tries_reg[12]_i_2_n_2 ;
  wire \CMD0_tries_reg[12]_i_2_n_3 ;
  wire \CMD0_tries_reg[16]_i_2_n_0 ;
  wire \CMD0_tries_reg[16]_i_2_n_1 ;
  wire \CMD0_tries_reg[16]_i_2_n_2 ;
  wire \CMD0_tries_reg[16]_i_2_n_3 ;
  wire \CMD0_tries_reg[20]_i_2_n_0 ;
  wire \CMD0_tries_reg[20]_i_2_n_1 ;
  wire \CMD0_tries_reg[20]_i_2_n_2 ;
  wire \CMD0_tries_reg[20]_i_2_n_3 ;
  wire \CMD0_tries_reg[24]_i_2_n_0 ;
  wire \CMD0_tries_reg[24]_i_2_n_1 ;
  wire \CMD0_tries_reg[24]_i_2_n_2 ;
  wire \CMD0_tries_reg[24]_i_2_n_3 ;
  wire \CMD0_tries_reg[28]_i_2_n_0 ;
  wire \CMD0_tries_reg[28]_i_2_n_1 ;
  wire \CMD0_tries_reg[28]_i_2_n_2 ;
  wire \CMD0_tries_reg[28]_i_2_n_3 ;
  wire \CMD0_tries_reg[31]_i_5_n_2 ;
  wire \CMD0_tries_reg[31]_i_5_n_3 ;
  wire \CMD0_tries_reg[4]_i_2_n_0 ;
  wire \CMD0_tries_reg[4]_i_2_n_1 ;
  wire \CMD0_tries_reg[4]_i_2_n_2 ;
  wire \CMD0_tries_reg[4]_i_2_n_3 ;
  wire \CMD0_tries_reg[8]_i_2_n_0 ;
  wire \CMD0_tries_reg[8]_i_2_n_1 ;
  wire \CMD0_tries_reg[8]_i_2_n_2 ;
  wire \CMD0_tries_reg[8]_i_2_n_3 ;
  wire \CMD0_tries_reg_n_0_[0] ;
  wire \CMD0_tries_reg_n_0_[10] ;
  wire \CMD0_tries_reg_n_0_[11] ;
  wire \CMD0_tries_reg_n_0_[12] ;
  wire \CMD0_tries_reg_n_0_[13] ;
  wire \CMD0_tries_reg_n_0_[14] ;
  wire \CMD0_tries_reg_n_0_[15] ;
  wire \CMD0_tries_reg_n_0_[16] ;
  wire \CMD0_tries_reg_n_0_[17] ;
  wire \CMD0_tries_reg_n_0_[18] ;
  wire \CMD0_tries_reg_n_0_[19] ;
  wire \CMD0_tries_reg_n_0_[1] ;
  wire \CMD0_tries_reg_n_0_[20] ;
  wire \CMD0_tries_reg_n_0_[21] ;
  wire \CMD0_tries_reg_n_0_[22] ;
  wire \CMD0_tries_reg_n_0_[23] ;
  wire \CMD0_tries_reg_n_0_[24] ;
  wire \CMD0_tries_reg_n_0_[25] ;
  wire \CMD0_tries_reg_n_0_[26] ;
  wire \CMD0_tries_reg_n_0_[27] ;
  wire \CMD0_tries_reg_n_0_[28] ;
  wire \CMD0_tries_reg_n_0_[29] ;
  wire \CMD0_tries_reg_n_0_[2] ;
  wire \CMD0_tries_reg_n_0_[30] ;
  wire \CMD0_tries_reg_n_0_[31] ;
  wire \CMD0_tries_reg_n_0_[3] ;
  wire \CMD0_tries_reg_n_0_[4] ;
  wire \CMD0_tries_reg_n_0_[5] ;
  wire \CMD0_tries_reg_n_0_[6] ;
  wire \CMD0_tries_reg_n_0_[7] ;
  wire \CMD0_tries_reg_n_0_[8] ;
  wire \CMD0_tries_reg_n_0_[9] ;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_12_n_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire \FSM_sequential_state[0]_i_14_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_5_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire [1:1]byte_buf;
  wire \byte_buf[0]_i_1_n_0 ;
  wire \byte_buf[0]_i_2_n_0 ;
  wire \byte_buf[1]_i_1_n_0 ;
  wire \byte_buf[2]_i_1_n_0 ;
  wire \byte_buf[2]_i_2_n_0 ;
  wire \byte_buf[3]_i_1_n_0 ;
  wire \byte_buf[4]_i_1_n_0 ;
  wire \byte_buf[4]_i_2_n_0 ;
  wire \byte_buf[5]_i_1_n_0 ;
  wire \byte_buf[6]_i_1_n_0 ;
  wire \byte_buf[6]_i_2_n_0 ;
  wire \byte_buf[6]_i_3_n_0 ;
  wire \byte_buf[7]_i_1_n_0 ;
  wire \byte_buf[7]_i_3_n_0 ;
  wire \byte_buf_reg_n_0_[0] ;
  wire \byte_buf_reg_n_0_[1] ;
  wire \byte_buf_reg_n_0_[2] ;
  wire \byte_buf_reg_n_0_[3] ;
  wire \byte_buf_reg_n_0_[4] ;
  wire \byte_buf_reg_n_0_[5] ;
  wire \byte_buf_reg_n_0_[6] ;
  wire \byte_buf_reg_n_0_[7] ;
  wire clk;
  wire clk_count;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[1]_i_1_n_0 ;
  wire \clk_count[2]_i_1_n_0 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[2] ;
  wire cmd_bit_cnt;
  wire \cmd_bit_cnt[0]_i_1_n_0 ;
  wire \cmd_bit_cnt[1]_i_1_n_0 ;
  wire \cmd_bit_cnt[2]_i_1_n_0 ;
  wire \cmd_bit_cnt[2]_i_2_n_0 ;
  wire \cmd_bit_cnt[3]_i_1_n_0 ;
  wire \cmd_bit_cnt[4]_i_1_n_0 ;
  wire \cmd_bit_cnt[4]_i_2_n_0 ;
  wire \cmd_bit_cnt[5]_i_2_n_0 ;
  wire \cmd_bit_cnt[5]_i_3_n_0 ;
  wire \cmd_bit_cnt[5]_i_4_n_0 ;
  wire \cmd_bit_cnt[5]_i_5_n_0 ;
  wire \cmd_bit_cnt[5]_i_6_n_0 ;
  wire \cmd_bit_cnt_reg_n_0_[0] ;
  wire \cmd_bit_cnt_reg_n_0_[1] ;
  wire \cmd_bit_cnt_reg_n_0_[2] ;
  wire \cmd_bit_cnt_reg_n_0_[3] ;
  wire \cmd_bit_cnt_reg_n_0_[4] ;
  wire \cmd_bit_cnt_reg_n_0_[5] ;
  wire cmd_byte_buf;
  wire \cmd_byte_buf[0]_i_1_n_0 ;
  wire \cmd_byte_buf[10]_i_1_n_0 ;
  wire \cmd_byte_buf[11]_i_1_n_0 ;
  wire \cmd_byte_buf[12]_i_1_n_0 ;
  wire \cmd_byte_buf[13]_i_1_n_0 ;
  wire \cmd_byte_buf[14]_i_1_n_0 ;
  wire \cmd_byte_buf[15]_i_1_n_0 ;
  wire \cmd_byte_buf[16]_i_1_n_0 ;
  wire \cmd_byte_buf[16]_i_2_n_0 ;
  wire \cmd_byte_buf[17]_i_1_n_0 ;
  wire \cmd_byte_buf[18]_i_1_n_0 ;
  wire \cmd_byte_buf[19]_i_1_n_0 ;
  wire \cmd_byte_buf[1]_i_1_n_0 ;
  wire \cmd_byte_buf[1]_i_2_n_0 ;
  wire \cmd_byte_buf[1]_i_3_n_0 ;
  wire \cmd_byte_buf[20]_i_1_n_0 ;
  wire \cmd_byte_buf[21]_i_1_n_0 ;
  wire \cmd_byte_buf[22]_i_1_n_0 ;
  wire \cmd_byte_buf[23]_i_1_n_0 ;
  wire \cmd_byte_buf[24]_i_1_n_0 ;
  wire \cmd_byte_buf[25]_i_1_n_0 ;
  wire \cmd_byte_buf[26]_i_1_n_0 ;
  wire \cmd_byte_buf[27]_i_1_n_0 ;
  wire \cmd_byte_buf[28]_i_1_n_0 ;
  wire \cmd_byte_buf[29]_i_1_n_0 ;
  wire \cmd_byte_buf[2]_i_1_n_0 ;
  wire \cmd_byte_buf[30]_i_1_n_0 ;
  wire \cmd_byte_buf[31]_i_1_n_0 ;
  wire \cmd_byte_buf[32]_i_1_n_0 ;
  wire \cmd_byte_buf[33]_i_1_n_0 ;
  wire \cmd_byte_buf[34]_i_1_n_0 ;
  wire \cmd_byte_buf[35]_i_1_n_0 ;
  wire \cmd_byte_buf[36]_i_1_n_0 ;
  wire \cmd_byte_buf[37]_i_1_n_0 ;
  wire \cmd_byte_buf[38]_i_1_n_0 ;
  wire \cmd_byte_buf[39]_i_1_n_0 ;
  wire \cmd_byte_buf[3]_i_1_n_0 ;
  wire \cmd_byte_buf[40]_i_1_n_0 ;
  wire \cmd_byte_buf[41]_i_1_n_0 ;
  wire \cmd_byte_buf[42]_i_1_n_0 ;
  wire \cmd_byte_buf[43]_i_1_n_0 ;
  wire \cmd_byte_buf[43]_i_2_n_0 ;
  wire \cmd_byte_buf[43]_i_3_n_0 ;
  wire \cmd_byte_buf[43]_i_4_n_0 ;
  wire \cmd_byte_buf[44]_i_1_n_0 ;
  wire \cmd_byte_buf[45]_i_1_n_0 ;
  wire \cmd_byte_buf[46]_i_1_n_0 ;
  wire \cmd_byte_buf[47]_i_2_n_0 ;
  wire \cmd_byte_buf[4]_i_1_n_0 ;
  wire \cmd_byte_buf[4]_i_2_n_0 ;
  wire \cmd_byte_buf[4]_i_3_n_0 ;
  wire \cmd_byte_buf[4]_i_4_n_0 ;
  wire \cmd_byte_buf[5]_i_1_n_0 ;
  wire \cmd_byte_buf[6]_i_1_n_0 ;
  wire \cmd_byte_buf[7]_i_1_n_0 ;
  wire \cmd_byte_buf[8]_i_1_n_0 ;
  wire \cmd_byte_buf[9]_i_1_n_0 ;
  wire cs;
  wire cs_i;
  wire cs_i_i_10_n_0;
  wire cs_i_i_11_n_0;
  wire cs_i_i_12_n_0;
  wire cs_i_i_13_n_0;
  wire cs_i_i_14_n_0;
  wire cs_i_i_15_n_0;
  wire cs_i_i_2_n_0;
  wire cs_i_i_3_n_0;
  wire cs_i_i_4_n_0;
  wire cs_i_i_5_n_0;
  wire cs_i_i_6_n_0;
  wire cs_i_i_7_n_0;
  wire cs_i_i_8_n_0;
  wire cs_i_i_9_n_0;
  wire done;
  wire done_i_i_1_n_0;
  wire [47:1]in14;
  wire [31:1]in9;
  wire miso;
  wire mosi;
  wire mosi_i_i_1_n_0;
  wire p_0_in;
  wire response_test_DV_i_i_1_n_0;
  wire response_test_byte_i;
  wire [7:0]response_test_byte_i0_in;
  wire \response_test_byte_i[7]_i_3_n_0 ;
  wire rst;
  wire sck_i_i_1_n_0;
  wire sck_i_i_2_n_0;
  wire sck_i_reg_0;
  wire [3:0]state;
  wire [3:0]state__0;
  wire test_DV;
  wire [7:0]test_byte;
  wire test_give_response;
  wire test_give_response1_out;
  wire test_give_response_i_1_n_0;
  wire [3:2]\NLW_CMD0_tries_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_CMD0_tries_reg[31]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \CMD0_tries[0]_i_1 
       (.I0(\CMD0_tries_reg_n_0_[0] ),
        .I1(state[3]),
        .O(\CMD0_tries[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[10]_i_1 
       (.I0(in9[10]),
        .I1(state[3]),
        .O(CMD0_tries[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[11]_i_1 
       (.I0(in9[11]),
        .I1(state[3]),
        .O(CMD0_tries[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[12]_i_1 
       (.I0(in9[12]),
        .I1(state[3]),
        .O(CMD0_tries[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[13]_i_1 
       (.I0(in9[13]),
        .I1(state[3]),
        .O(CMD0_tries[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[14]_i_1 
       (.I0(in9[14]),
        .I1(state[3]),
        .O(CMD0_tries[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[15]_i_1 
       (.I0(in9[15]),
        .I1(state[3]),
        .O(CMD0_tries[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[16]_i_1 
       (.I0(in9[16]),
        .I1(state[3]),
        .O(CMD0_tries[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[17]_i_1 
       (.I0(in9[17]),
        .I1(state[3]),
        .O(CMD0_tries[17]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[18]_i_1 
       (.I0(in9[18]),
        .I1(state[3]),
        .O(CMD0_tries[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[19]_i_1 
       (.I0(in9[19]),
        .I1(state[3]),
        .O(CMD0_tries[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[1]_i_1 
       (.I0(in9[1]),
        .I1(state[3]),
        .O(CMD0_tries[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[20]_i_1 
       (.I0(in9[20]),
        .I1(state[3]),
        .O(CMD0_tries[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[21]_i_1 
       (.I0(in9[21]),
        .I1(state[3]),
        .O(CMD0_tries[21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[22]_i_1 
       (.I0(in9[22]),
        .I1(state[3]),
        .O(CMD0_tries[22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[23]_i_1 
       (.I0(in9[23]),
        .I1(state[3]),
        .O(CMD0_tries[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[24]_i_1 
       (.I0(in9[24]),
        .I1(state[3]),
        .O(CMD0_tries[24]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[25]_i_1 
       (.I0(in9[25]),
        .I1(state[3]),
        .O(CMD0_tries[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[26]_i_1 
       (.I0(in9[26]),
        .I1(state[3]),
        .O(CMD0_tries[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[27]_i_1 
       (.I0(in9[27]),
        .I1(state[3]),
        .O(CMD0_tries[27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[28]_i_1 
       (.I0(in9[28]),
        .I1(state[3]),
        .O(CMD0_tries[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[29]_i_1 
       (.I0(in9[29]),
        .I1(state[3]),
        .O(CMD0_tries[29]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[2]_i_1 
       (.I0(in9[2]),
        .I1(state[3]),
        .O(CMD0_tries[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[30]_i_1 
       (.I0(in9[30]),
        .I1(state[3]),
        .O(CMD0_tries[30]));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \CMD0_tries[31]_i_1 
       (.I0(\CMD0_tries[31]_i_3_n_0 ),
        .I1(cs_i_i_5_n_0),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\CMD0_tries[31]_i_4_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(CMD0_tries_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[31]_i_2 
       (.I0(in9[31]),
        .I1(state[3]),
        .O(CMD0_tries[31]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \CMD0_tries[31]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(\CMD0_tries[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \CMD0_tries[31]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\CMD0_tries[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[3]_i_1 
       (.I0(in9[3]),
        .I1(state[3]),
        .O(CMD0_tries[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[4]_i_1 
       (.I0(in9[4]),
        .I1(state[3]),
        .O(CMD0_tries[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[5]_i_1 
       (.I0(in9[5]),
        .I1(state[3]),
        .O(CMD0_tries[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[6]_i_1 
       (.I0(in9[6]),
        .I1(state[3]),
        .O(CMD0_tries[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[7]_i_1 
       (.I0(in9[7]),
        .I1(state[3]),
        .O(CMD0_tries[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[8]_i_1 
       (.I0(in9[8]),
        .I1(state[3]),
        .O(CMD0_tries[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CMD0_tries[9]_i_1 
       (.I0(in9[9]),
        .I1(state[3]),
        .O(CMD0_tries[9]));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[0] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(\CMD0_tries[0]_i_1_n_0 ),
        .Q(\CMD0_tries_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[10] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[10]),
        .Q(\CMD0_tries_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[11] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[11]),
        .Q(\CMD0_tries_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[12] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[12]),
        .Q(\CMD0_tries_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[12]_i_2 
       (.CI(\CMD0_tries_reg[8]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[12]_i_2_n_0 ,\CMD0_tries_reg[12]_i_2_n_1 ,\CMD0_tries_reg[12]_i_2_n_2 ,\CMD0_tries_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S({\CMD0_tries_reg_n_0_[12] ,\CMD0_tries_reg_n_0_[11] ,\CMD0_tries_reg_n_0_[10] ,\CMD0_tries_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[13] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[13]),
        .Q(\CMD0_tries_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[14] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[14]),
        .Q(\CMD0_tries_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[15] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[15]),
        .Q(\CMD0_tries_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[16] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[16]),
        .Q(\CMD0_tries_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[16]_i_2 
       (.CI(\CMD0_tries_reg[12]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[16]_i_2_n_0 ,\CMD0_tries_reg[16]_i_2_n_1 ,\CMD0_tries_reg[16]_i_2_n_2 ,\CMD0_tries_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S({\CMD0_tries_reg_n_0_[16] ,\CMD0_tries_reg_n_0_[15] ,\CMD0_tries_reg_n_0_[14] ,\CMD0_tries_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[17] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[17]),
        .Q(\CMD0_tries_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[18] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[18]),
        .Q(\CMD0_tries_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[19] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[19]),
        .Q(\CMD0_tries_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[1] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[1]),
        .Q(\CMD0_tries_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[20] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[20]),
        .Q(\CMD0_tries_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[20]_i_2 
       (.CI(\CMD0_tries_reg[16]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[20]_i_2_n_0 ,\CMD0_tries_reg[20]_i_2_n_1 ,\CMD0_tries_reg[20]_i_2_n_2 ,\CMD0_tries_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[20:17]),
        .S({\CMD0_tries_reg_n_0_[20] ,\CMD0_tries_reg_n_0_[19] ,\CMD0_tries_reg_n_0_[18] ,\CMD0_tries_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[21] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[21]),
        .Q(\CMD0_tries_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[22] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[22]),
        .Q(\CMD0_tries_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[23] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[23]),
        .Q(\CMD0_tries_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[24] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[24]),
        .Q(\CMD0_tries_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[24]_i_2 
       (.CI(\CMD0_tries_reg[20]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[24]_i_2_n_0 ,\CMD0_tries_reg[24]_i_2_n_1 ,\CMD0_tries_reg[24]_i_2_n_2 ,\CMD0_tries_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:21]),
        .S({\CMD0_tries_reg_n_0_[24] ,\CMD0_tries_reg_n_0_[23] ,\CMD0_tries_reg_n_0_[22] ,\CMD0_tries_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[25] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[25]),
        .Q(\CMD0_tries_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[26] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[26]),
        .Q(\CMD0_tries_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[27] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[27]),
        .Q(\CMD0_tries_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[28] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[28]),
        .Q(\CMD0_tries_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[28]_i_2 
       (.CI(\CMD0_tries_reg[24]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[28]_i_2_n_0 ,\CMD0_tries_reg[28]_i_2_n_1 ,\CMD0_tries_reg[28]_i_2_n_2 ,\CMD0_tries_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[28:25]),
        .S({\CMD0_tries_reg_n_0_[28] ,\CMD0_tries_reg_n_0_[27] ,\CMD0_tries_reg_n_0_[26] ,\CMD0_tries_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[29] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[29]),
        .Q(\CMD0_tries_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[2] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[2]),
        .Q(\CMD0_tries_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[30] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[30]),
        .Q(\CMD0_tries_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[31] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[31]),
        .Q(\CMD0_tries_reg_n_0_[31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[31]_i_5 
       (.CI(\CMD0_tries_reg[28]_i_2_n_0 ),
        .CO({\NLW_CMD0_tries_reg[31]_i_5_CO_UNCONNECTED [3:2],\CMD0_tries_reg[31]_i_5_n_2 ,\CMD0_tries_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CMD0_tries_reg[31]_i_5_O_UNCONNECTED [3],in9[31:29]}),
        .S({1'b0,\CMD0_tries_reg_n_0_[31] ,\CMD0_tries_reg_n_0_[30] ,\CMD0_tries_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[3] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[3]),
        .Q(\CMD0_tries_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[4] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[4]),
        .Q(\CMD0_tries_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\CMD0_tries_reg[4]_i_2_n_0 ,\CMD0_tries_reg[4]_i_2_n_1 ,\CMD0_tries_reg[4]_i_2_n_2 ,\CMD0_tries_reg[4]_i_2_n_3 }),
        .CYINIT(\CMD0_tries_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S({\CMD0_tries_reg_n_0_[4] ,\CMD0_tries_reg_n_0_[3] ,\CMD0_tries_reg_n_0_[2] ,\CMD0_tries_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[5] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[5]),
        .Q(\CMD0_tries_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[6] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[6]),
        .Q(\CMD0_tries_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[7] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[7]),
        .Q(\CMD0_tries_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[8] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[8]),
        .Q(\CMD0_tries_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CMD0_tries_reg[8]_i_2 
       (.CI(\CMD0_tries_reg[4]_i_2_n_0 ),
        .CO({\CMD0_tries_reg[8]_i_2_n_0 ,\CMD0_tries_reg[8]_i_2_n_1 ,\CMD0_tries_reg[8]_i_2_n_2 ,\CMD0_tries_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\CMD0_tries_reg_n_0_[8] ,\CMD0_tries_reg_n_0_[7] ,\CMD0_tries_reg_n_0_[6] ,\CMD0_tries_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \CMD0_tries_reg[9] 
       (.C(clk),
        .CE(CMD0_tries_0),
        .D(CMD0_tries[9]),
        .Q(\CMD0_tries_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF150000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h22A80000)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(\CMD0_tries_reg_n_0_[17] ),
        .I1(\CMD0_tries_reg_n_0_[16] ),
        .I2(\CMD0_tries_reg_n_0_[19] ),
        .I3(\CMD0_tries_reg_n_0_[18] ),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(\CMD0_tries_reg_n_0_[25] ),
        .I1(\CMD0_tries_reg_n_0_[24] ),
        .I2(\CMD0_tries_reg_n_0_[27] ),
        .I3(\CMD0_tries_reg_n_0_[26] ),
        .O(\FSM_sequential_state[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(\CMD0_tries_reg_n_0_[1] ),
        .I1(\CMD0_tries_reg_n_0_[0] ),
        .I2(\CMD0_tries_reg_n_0_[2] ),
        .I3(\CMD0_tries_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_14 
       (.I0(\CMD0_tries_reg_n_0_[9] ),
        .I1(\CMD0_tries_reg_n_0_[8] ),
        .I2(\CMD0_tries_reg_n_0_[11] ),
        .I3(\CMD0_tries_reg_n_0_[10] ),
        .O(\FSM_sequential_state[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\byte_buf_reg_n_0_[2] ),
        .I1(\byte_buf_reg_n_0_[3] ),
        .I2(\byte_buf_reg_n_0_[1] ),
        .I3(\byte_buf_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF222A)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[0]_i_6_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_7_n_0 ),
        .I3(\FSM_sequential_state[0]_i_8_n_0 ),
        .I4(\FSM_sequential_state[0]_i_9_n_0 ),
        .I5(\FSM_sequential_state[0]_i_10_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\byte_buf_reg_n_0_[5] ),
        .I1(\byte_buf_reg_n_0_[4] ),
        .I2(\byte_buf_reg_n_0_[7] ),
        .I3(\byte_buf_reg_n_0_[6] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(cs_i_i_15_n_0),
        .I1(\FSM_sequential_state[0]_i_11_n_0 ),
        .I2(cs_i_i_14_n_0),
        .I3(\FSM_sequential_state[0]_i_12_n_0 ),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(cs_i_i_13_n_0),
        .I1(\FSM_sequential_state[0]_i_13_n_0 ),
        .I2(cs_i_i_12_n_0),
        .I3(\FSM_sequential_state[0]_i_14_n_0 ),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEF2F2FEFFF2F2)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(cs_i_i_4_n_0),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30001F00)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(cs_i_i_8_n_0),
        .I1(cs_i_i_9_n_0),
        .I2(cs_i_i_10_n_0),
        .I3(cs_i_i_11_n_0),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF003333A5F0F0C0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[3]),
        .O(state__0[2]));
  LUT6 #(
    .INIT(64'h00F41414001414F1)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(sck_i_i_2_n_0),
        .I1(sck_i_reg_0),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[1]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAA8888AAAA8888)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[3]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\cmd_bit_cnt_reg_n_0_[4] ),
        .I1(\cmd_bit_cnt_reg_n_0_[2] ),
        .I2(\cmd_bit_cnt_reg_n_0_[0] ),
        .I3(\cmd_bit_cnt_reg_n_0_[1] ),
        .I4(\cmd_bit_cnt_reg_n_0_[3] ),
        .I5(\cmd_bit_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(state[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[2]),
        .Q(state[2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[3]),
        .Q(state[3]),
        .R(rst));
  LUT6 #(
    .INIT(64'h222BFFFF373F0000)) 
    \bit_cnt[0]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(bit_cnt),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAFFBA00)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt[2]_i_2_n_0 ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(bit_cnt),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAFFFFAAAE0000)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt[2]_i_2_n_0 ),
        .I1(\bit_cnt[2]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(bit_cnt),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1F01)) 
    \bit_cnt[2]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(\bit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bit_cnt[2]_i_3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .O(\bit_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3C2AEB0C002AE8)) 
    \bit_cnt[2]_i_4 
       (.I0(\bit_cnt[2]_i_5_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\response_test_byte_i[7]_i_3_n_0 ),
        .O(bit_cnt));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bit_cnt[2]_i_5 
       (.I0(sck_i_reg_0),
        .I1(\clk_count_reg_n_0_[2] ),
        .I2(\clk_count_reg_n_0_[0] ),
        .I3(\clk_count_reg_n_0_[1] ),
        .O(\bit_cnt[2]_i_5_n_0 ));
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
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \byte_buf[0]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[0]_i_2_n_0 ),
        .I2(\byte_buf[6]_i_2_n_0 ),
        .I3(cs_i_i_2_n_0),
        .I4(\byte_buf_reg_n_0_[0] ),
        .O(\byte_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \byte_buf[0]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(\byte_buf[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \byte_buf[1]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[1] ),
        .O(\byte_buf[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \byte_buf[2]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[6]_i_2_n_0 ),
        .I2(\byte_buf[2]_i_2_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[2] ),
        .O(\byte_buf[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \byte_buf[2]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .O(\byte_buf[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \byte_buf[3]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[3] ),
        .O(\byte_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \byte_buf[4]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[6]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\byte_buf[4]_i_2_n_0 ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[4] ),
        .O(\byte_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \byte_buf[4]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .O(\byte_buf[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \byte_buf[5]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[5] ),
        .O(\byte_buf[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \byte_buf[6]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[6]_i_2_n_0 ),
        .I2(\byte_buf[6]_i_3_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[6] ),
        .O(\byte_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h15D4)) 
    \byte_buf[6]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\byte_buf[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \byte_buf[6]_i_3 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .O(\byte_buf[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \byte_buf[7]_i_1 
       (.I0(byte_buf),
        .I1(\byte_buf[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(cs_i_i_2_n_0),
        .I5(\byte_buf_reg_n_0_[7] ),
        .O(\byte_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \byte_buf[7]_i_2 
       (.I0(miso),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(byte_buf));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h407E0000)) 
    \byte_buf[7]_i_3 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .O(\byte_buf[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[0]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[1]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[2]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[3]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[4]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[5]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[6]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \byte_buf_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_buf[7]_i_1_n_0 ),
        .Q(\byte_buf_reg_n_0_[7] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC882337D)) 
    \clk_count[0]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\clk_count_reg_n_0_[0] ),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5C5D55D0A0A2AA2)) 
    \clk_count[1]_i_1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\clk_count_reg_n_0_[1] ),
        .O(\clk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFF70000000)) 
    \clk_count[2]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(\clk_count_reg_n_0_[1] ),
        .I3(\clk_count_reg_n_0_[0] ),
        .I4(clk_count),
        .I5(\clk_count_reg_n_0_[2] ),
        .O(\clk_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h377D)) 
    \clk_count[2]_i_2 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .O(clk_count));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count[1]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_count[2]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[2] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000002A9)) 
    \cmd_bit_cnt[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\cmd_bit_cnt_reg_n_0_[0] ),
        .O(\cmd_bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000560156010000)) 
    \cmd_bit_cnt[1]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\cmd_bit_cnt_reg_n_0_[0] ),
        .I5(\cmd_bit_cnt_reg_n_0_[1] ),
        .O(\cmd_bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0061616161000000)) 
    \cmd_bit_cnt[2]_i_1 
       (.I0(state[3]),
        .I1(\cmd_bit_cnt[2]_i_2_n_0 ),
        .I2(state[0]),
        .I3(\cmd_bit_cnt_reg_n_0_[1] ),
        .I4(\cmd_bit_cnt_reg_n_0_[0] ),
        .I5(\cmd_bit_cnt_reg_n_0_[2] ),
        .O(\cmd_bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cmd_bit_cnt[2]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\cmd_bit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cmd_bit_cnt[3]_i_1 
       (.I0(\cmd_bit_cnt[5]_i_5_n_0 ),
        .I1(\cmd_bit_cnt_reg_n_0_[2] ),
        .I2(\cmd_bit_cnt_reg_n_0_[0] ),
        .I3(\cmd_bit_cnt_reg_n_0_[1] ),
        .I4(\cmd_bit_cnt_reg_n_0_[3] ),
        .O(\cmd_bit_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF00E000E)) 
    \cmd_bit_cnt[4]_i_1 
       (.I0(\cmd_bit_cnt[5]_i_6_n_0 ),
        .I1(\cmd_bit_cnt[4]_i_2_n_0 ),
        .I2(\cmd_bit_cnt_reg_n_0_[4] ),
        .I3(\cmd_bit_cnt[5]_i_4_n_0 ),
        .I4(\cmd_bit_cnt[5]_i_5_n_0 ),
        .O(\cmd_bit_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000809)) 
    \cmd_bit_cnt[4]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\cmd_bit_cnt_reg_n_0_[5] ),
        .O(\cmd_bit_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FBB3BBE0C88388E)) 
    \cmd_bit_cnt[5]_i_1 
       (.I0(\cmd_bit_cnt[5]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(cs_i_i_5_n_0),
        .O(cmd_bit_cnt));
  LUT5 #(
    .INIT(32'h8844F800)) 
    \cmd_bit_cnt[5]_i_2 
       (.I0(\cmd_bit_cnt[5]_i_4_n_0 ),
        .I1(\cmd_bit_cnt[5]_i_5_n_0 ),
        .I2(\cmd_bit_cnt[5]_i_6_n_0 ),
        .I3(\cmd_bit_cnt_reg_n_0_[5] ),
        .I4(\cmd_bit_cnt_reg_n_0_[4] ),
        .O(\cmd_bit_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cmd_bit_cnt[5]_i_3 
       (.I0(\clk_count_reg_n_0_[2] ),
        .I1(\clk_count_reg_n_0_[0] ),
        .I2(\clk_count_reg_n_0_[1] ),
        .I3(sck_i_reg_0),
        .O(\cmd_bit_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cmd_bit_cnt[5]_i_4 
       (.I0(\cmd_bit_cnt_reg_n_0_[2] ),
        .I1(\cmd_bit_cnt_reg_n_0_[0] ),
        .I2(\cmd_bit_cnt_reg_n_0_[1] ),
        .I3(\cmd_bit_cnt_reg_n_0_[3] ),
        .O(\cmd_bit_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5601)) 
    \cmd_bit_cnt[5]_i_5 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\cmd_bit_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4048)) 
    \cmd_bit_cnt[5]_i_6 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\cmd_bit_cnt[5]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[0] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[0]_i_1_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[1] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[1]_i_1_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[2] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[2]_i_1_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[3] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[3]_i_1_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[4] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[4]_i_1_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_bit_cnt_reg[5] 
       (.C(clk),
        .CE(cmd_bit_cnt),
        .D(\cmd_bit_cnt[5]_i_2_n_0 ),
        .Q(\cmd_bit_cnt_reg_n_0_[5] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hA08B00FC)) 
    \cmd_byte_buf[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\cmd_byte_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[10]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[10]),
        .O(\cmd_byte_buf[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFF888F888)) 
    \cmd_byte_buf[11]_i_1 
       (.I0(in14[11]),
        .I1(\cmd_byte_buf[16]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\CMD0_tries[31]_i_4_n_0 ),
        .O(\cmd_byte_buf[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[12]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[12]),
        .O(\cmd_byte_buf[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFF888F888)) 
    \cmd_byte_buf[13]_i_1 
       (.I0(in14[13]),
        .I1(\cmd_byte_buf[16]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\CMD0_tries[31]_i_4_n_0 ),
        .O(\cmd_byte_buf[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[14]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[14]),
        .O(\cmd_byte_buf[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFF888F888)) 
    \cmd_byte_buf[15]_i_1 
       (.I0(in14[15]),
        .I1(\cmd_byte_buf[16]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\CMD0_tries[31]_i_4_n_0 ),
        .O(\cmd_byte_buf[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFF888F888)) 
    \cmd_byte_buf[16]_i_1 
       (.I0(in14[16]),
        .I1(\cmd_byte_buf[16]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\CMD0_tries[31]_i_4_n_0 ),
        .O(\cmd_byte_buf[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h57115705)) 
    \cmd_byte_buf[16]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[17]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[17]),
        .O(\cmd_byte_buf[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[18]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[18]),
        .O(\cmd_byte_buf[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[19]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[19]),
        .O(\cmd_byte_buf[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFF4FFF4)) 
    \cmd_byte_buf[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\CMD0_tries[31]_i_4_n_0 ),
        .I2(\cmd_byte_buf[1]_i_2_n_0 ),
        .I3(\cmd_byte_buf[1]_i_3_n_0 ),
        .I4(in14[1]),
        .I5(\cmd_byte_buf[16]_i_2_n_0 ),
        .O(\cmd_byte_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cmd_byte_buf[1]_i_2 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(\cmd_byte_buf[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \cmd_byte_buf[1]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[20]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[20]),
        .O(\cmd_byte_buf[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[21]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[21]),
        .O(\cmd_byte_buf[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[22]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[22]),
        .O(\cmd_byte_buf[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[23]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[23]),
        .O(\cmd_byte_buf[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[24]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[24]),
        .O(\cmd_byte_buf[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[25]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[25]),
        .O(\cmd_byte_buf[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[26]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[26]),
        .O(\cmd_byte_buf[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[27]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[27]),
        .O(\cmd_byte_buf[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[28]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[28]),
        .O(\cmd_byte_buf[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[29]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[29]),
        .O(\cmd_byte_buf[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB30BBB833F0B8)) 
    \cmd_byte_buf[2]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[3]),
        .I2(in14[2]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\cmd_byte_buf[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[30]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[30]),
        .O(\cmd_byte_buf[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[31]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[31]),
        .O(\cmd_byte_buf[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[32]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[32]),
        .O(\cmd_byte_buf[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[33]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[33]),
        .O(\cmd_byte_buf[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[34]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[34]),
        .O(\cmd_byte_buf[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[35]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[35]),
        .O(\cmd_byte_buf[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[36]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[36]),
        .O(\cmd_byte_buf[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[37]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[37]),
        .O(\cmd_byte_buf[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A002A020A0C2A02)) 
    \cmd_byte_buf[38]_i_1 
       (.I0(in14[38]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[39]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[39]),
        .O(\cmd_byte_buf[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[3]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[3]),
        .O(\cmd_byte_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC0AAAAAC0CFF30A)) 
    \cmd_byte_buf[40]_i_1 
       (.I0(in14[40]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\cmd_byte_buf[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC0AAAAAC0CFC30A)) 
    \cmd_byte_buf[41]_i_1 
       (.I0(in14[41]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\cmd_byte_buf[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE2AF0CE222A0302)) 
    \cmd_byte_buf[42]_i_1 
       (.I0(in14[42]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cmd_byte_buf[43]_i_1 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\CMD0_tries[31]_i_4_n_0 ),
        .I2(state[3]),
        .I3(\cmd_byte_buf[43]_i_2_n_0 ),
        .I4(\cmd_byte_buf[43]_i_3_n_0 ),
        .I5(\cmd_byte_buf[43]_i_4_n_0 ),
        .O(\cmd_byte_buf[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cmd_byte_buf[43]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[43]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000204)) 
    \cmd_byte_buf[43]_i_3 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\cmd_byte_buf[43]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000DCCEF00000000)) 
    \cmd_byte_buf[43]_i_4 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(in14[43]),
        .O(\cmd_byte_buf[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCC0AAAAAC0CFC30A)) 
    \cmd_byte_buf[44]_i_1 
       (.I0(in14[44]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\cmd_byte_buf[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC0AAAAAC0CFF30A)) 
    \cmd_byte_buf[45]_i_1 
       (.I0(in14[45]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\cmd_byte_buf[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2288F3F3F3F3F0)) 
    \cmd_byte_buf[46]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[0]),
        .I2(in14[46]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[3]),
        .O(\cmd_byte_buf[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FBB3BB20C883882)) 
    \cmd_byte_buf[47]_i_1 
       (.I0(\cmd_bit_cnt[5]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(cs_i_i_5_n_0),
        .O(cmd_byte_buf));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[47]_i_2 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[47]),
        .O(\cmd_byte_buf[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFEFEFCFCFEFE)) 
    \cmd_byte_buf[4]_i_1 
       (.I0(\cmd_byte_buf[4]_i_2_n_0 ),
        .I1(\cmd_byte_buf[4]_i_3_n_0 ),
        .I2(\cmd_byte_buf[4]_i_4_n_0 ),
        .I3(\CMD0_tries[31]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\cmd_byte_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \cmd_byte_buf[4]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\cmd_byte_buf[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[4]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[4]),
        .O(\cmd_byte_buf[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \cmd_byte_buf[4]_i_4 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(state[2]),
        .O(\cmd_byte_buf[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAC00ACE3A220AE)) 
    \cmd_byte_buf[5]_i_1 
       (.I0(in14[5]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state[1]),
        .O(\cmd_byte_buf[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAC00ACE3A220AE)) 
    \cmd_byte_buf[6]_i_1 
       (.I0(in14[6]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state[1]),
        .O(\cmd_byte_buf[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222A0332222A003E)) 
    \cmd_byte_buf[7]_i_1 
       (.I0(in14[7]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\cmd_byte_buf[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222B0000)) 
    \cmd_byte_buf[8]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(in14[8]),
        .O(\cmd_byte_buf[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFF888F888)) 
    \cmd_byte_buf[9]_i_1 
       (.I0(in14[9]),
        .I1(\cmd_byte_buf[16]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\CMD0_tries[31]_i_4_n_0 ),
        .O(\cmd_byte_buf[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[0] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[0]_i_1_n_0 ),
        .Q(in14[1]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[10] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[10]_i_1_n_0 ),
        .Q(in14[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[11] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[11]_i_1_n_0 ),
        .Q(in14[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[12] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[12]_i_1_n_0 ),
        .Q(in14[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[13] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[13]_i_1_n_0 ),
        .Q(in14[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[14] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[14]_i_1_n_0 ),
        .Q(in14[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[15] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[15]_i_1_n_0 ),
        .Q(in14[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[16] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[16]_i_1_n_0 ),
        .Q(in14[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[17] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[17]_i_1_n_0 ),
        .Q(in14[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[18] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[18]_i_1_n_0 ),
        .Q(in14[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[19] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[19]_i_1_n_0 ),
        .Q(in14[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[1] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[1]_i_1_n_0 ),
        .Q(in14[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[20] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[20]_i_1_n_0 ),
        .Q(in14[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[21] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[21]_i_1_n_0 ),
        .Q(in14[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[22] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[22]_i_1_n_0 ),
        .Q(in14[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[23] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[23]_i_1_n_0 ),
        .Q(in14[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[24] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[24]_i_1_n_0 ),
        .Q(in14[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[25] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[25]_i_1_n_0 ),
        .Q(in14[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[26] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[26]_i_1_n_0 ),
        .Q(in14[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[27] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[27]_i_1_n_0 ),
        .Q(in14[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[28] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[28]_i_1_n_0 ),
        .Q(in14[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[29] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[29]_i_1_n_0 ),
        .Q(in14[30]),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[2] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[2]_i_1_n_0 ),
        .Q(in14[3]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[30] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[30]_i_1_n_0 ),
        .Q(in14[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[31] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[31]_i_1_n_0 ),
        .Q(in14[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[32] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[32]_i_1_n_0 ),
        .Q(in14[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[33] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[33]_i_1_n_0 ),
        .Q(in14[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[34] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[34]_i_1_n_0 ),
        .Q(in14[35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[35] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[35]_i_1_n_0 ),
        .Q(in14[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[36] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[36]_i_1_n_0 ),
        .Q(in14[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[37] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[37]_i_1_n_0 ),
        .Q(in14[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[38] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[38]_i_1_n_0 ),
        .Q(in14[39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[39] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[39]_i_1_n_0 ),
        .Q(in14[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[3] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[3]_i_1_n_0 ),
        .Q(in14[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[40] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[40]_i_1_n_0 ),
        .Q(in14[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[41] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[41]_i_1_n_0 ),
        .Q(in14[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[42] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[42]_i_1_n_0 ),
        .Q(in14[43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[43] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[43]_i_1_n_0 ),
        .Q(in14[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[44] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[44]_i_1_n_0 ),
        .Q(in14[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[45] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[45]_i_1_n_0 ),
        .Q(in14[46]),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[46] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[46]_i_1_n_0 ),
        .Q(in14[47]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[47] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[47]_i_2_n_0 ),
        .Q(p_0_in),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[4] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[4]_i_1_n_0 ),
        .Q(in14[5]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[5] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[5]_i_1_n_0 ),
        .Q(in14[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[6] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[6]_i_1_n_0 ),
        .Q(in14[7]),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[7] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[7]_i_1_n_0 ),
        .Q(in14[8]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[8] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[8]_i_1_n_0 ),
        .Q(in14[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_byte_buf_reg[9] 
       (.C(clk),
        .CE(cmd_byte_buf),
        .D(\cmd_byte_buf[9]_i_1_n_0 ),
        .Q(in14[10]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAAA)) 
    cs_i_i_1
       (.I0(cs_i_i_2_n_0),
        .I1(cs_i_i_3_n_0),
        .I2(cs_i_i_4_n_0),
        .I3(cs_i_i_5_n_0),
        .I4(cs_i_i_6_n_0),
        .I5(cs_i_i_7_n_0),
        .O(cs_i));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_i_10
       (.I0(\CMD0_tries_reg_n_0_[26] ),
        .I1(\CMD0_tries_reg_n_0_[27] ),
        .I2(\CMD0_tries_reg_n_0_[24] ),
        .I3(\CMD0_tries_reg_n_0_[25] ),
        .I4(cs_i_i_14_n_0),
        .O(cs_i_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_i_11
       (.I0(\CMD0_tries_reg_n_0_[18] ),
        .I1(\CMD0_tries_reg_n_0_[19] ),
        .I2(\CMD0_tries_reg_n_0_[16] ),
        .I3(\CMD0_tries_reg_n_0_[17] ),
        .I4(cs_i_i_15_n_0),
        .O(cs_i_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_i_12
       (.I0(\CMD0_tries_reg_n_0_[13] ),
        .I1(\CMD0_tries_reg_n_0_[12] ),
        .I2(\CMD0_tries_reg_n_0_[15] ),
        .I3(\CMD0_tries_reg_n_0_[14] ),
        .O(cs_i_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    cs_i_i_13
       (.I0(\CMD0_tries_reg_n_0_[5] ),
        .I1(\CMD0_tries_reg_n_0_[4] ),
        .I2(\CMD0_tries_reg_n_0_[6] ),
        .I3(\CMD0_tries_reg_n_0_[7] ),
        .O(cs_i_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_i_14
       (.I0(\CMD0_tries_reg_n_0_[29] ),
        .I1(\CMD0_tries_reg_n_0_[28] ),
        .I2(\CMD0_tries_reg_n_0_[31] ),
        .I3(\CMD0_tries_reg_n_0_[30] ),
        .O(cs_i_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_i_15
       (.I0(\CMD0_tries_reg_n_0_[21] ),
        .I1(\CMD0_tries_reg_n_0_[20] ),
        .I2(\CMD0_tries_reg_n_0_[23] ),
        .I3(\CMD0_tries_reg_n_0_[22] ),
        .O(cs_i_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2040)) 
    cs_i_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .O(cs_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00000001)) 
    cs_i_i_3
       (.I0(cs_i_i_8_n_0),
        .I1(cs_i_i_9_n_0),
        .I2(cs_i_i_10_n_0),
        .I3(cs_i_i_11_n_0),
        .I4(state[3]),
        .I5(state[2]),
        .O(cs_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cs_i_i_4
       (.I0(state[1]),
        .I1(state[0]),
        .O(cs_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    cs_i_i_5
       (.I0(\clk_count_reg_n_0_[1] ),
        .I1(\clk_count_reg_n_0_[0] ),
        .I2(\clk_count_reg_n_0_[2] ),
        .I3(sck_i_reg_0),
        .I4(\byte_buf[0]_i_2_n_0 ),
        .O(cs_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00001154)) 
    cs_i_i_6
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(cs_i_i_6_n_0));
  LUT6 #(
    .INIT(64'h0A00EAC00A00AF0A)) 
    cs_i_i_7
       (.I0(\response_test_byte_i[7]_i_3_n_0 ),
        .I1(cs_i_i_5_n_0),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(cs_i_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_i_8
       (.I0(\CMD0_tries_reg_n_0_[10] ),
        .I1(\CMD0_tries_reg_n_0_[11] ),
        .I2(\CMD0_tries_reg_n_0_[8] ),
        .I3(\CMD0_tries_reg_n_0_[9] ),
        .I4(cs_i_i_12_n_0),
        .O(cs_i_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    cs_i_i_9
       (.I0(\CMD0_tries_reg_n_0_[3] ),
        .I1(\CMD0_tries_reg_n_0_[2] ),
        .I2(\CMD0_tries_reg_n_0_[0] ),
        .I3(\CMD0_tries_reg_n_0_[1] ),
        .I4(cs_i_i_13_n_0),
        .O(cs_i_i_9_n_0));
  FDSE #(
    .INIT(1'b0)) 
    cs_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_i),
        .Q(cs),
        .S(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    done_i_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(rst),
        .I5(done),
        .O(done_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFC20A0B20020A082)) 
    mosi_i_i_1
       (.I0(p_0_in),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(mosi),
        .O(mosi_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_i_i_1_n_0),
        .Q(mosi),
        .R(rst));
  LUT6 #(
    .INIT(64'hFC33333C00222220)) 
    response_test_DV_i_i_1
       (.I0(cs_i_i_5_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(test_DV),
        .O(response_test_DV_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    response_test_DV_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(response_test_DV_i_i_1_n_0),
        .Q(test_DV),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[0]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[0] ),
        .O(response_test_byte_i0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[1]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[1] ),
        .O(response_test_byte_i0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[2]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[2] ),
        .O(response_test_byte_i0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[3]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[3] ),
        .O(response_test_byte_i0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[4]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[4] ),
        .O(response_test_byte_i0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[5]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[5] ),
        .O(response_test_byte_i0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[6]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[6] ),
        .O(response_test_byte_i0_in[6]));
  LUT6 #(
    .INIT(64'h0FBB3BB20C883882)) 
    \response_test_byte_i[7]_i_1 
       (.I0(\response_test_byte_i[7]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(cs_i_i_5_n_0),
        .O(response_test_byte_i));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h13120000)) 
    \response_test_byte_i[7]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\byte_buf_reg_n_0_[7] ),
        .O(response_test_byte_i0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \response_test_byte_i[7]_i_3 
       (.I0(sck_i_reg_0),
        .I1(\clk_count_reg_n_0_[1] ),
        .I2(\clk_count_reg_n_0_[0] ),
        .I3(\clk_count_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\response_test_byte_i[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[0] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[0]),
        .Q(test_byte[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[1] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[1]),
        .Q(test_byte[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[2] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[2]),
        .Q(test_byte[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[3] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[3]),
        .Q(test_byte[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[4] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[4]),
        .Q(test_byte[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[5] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[5]),
        .Q(test_byte[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[6] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[6]),
        .Q(test_byte[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \response_test_byte_i_reg[7] 
       (.C(clk),
        .CE(response_test_byte_i),
        .D(response_test_byte_i0_in[7]),
        .Q(test_byte[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFA2BCAAA05140555)) 
    sck_i_i_1
       (.I0(sck_i_i_2_n_0),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(sck_i_reg_0),
        .O(sck_i_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    sck_i_i_2
       (.I0(\clk_count_reg_n_0_[1] ),
        .I1(\clk_count_reg_n_0_[0] ),
        .I2(\clk_count_reg_n_0_[2] ),
        .O(sck_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sck_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(sck_i_i_1_n_0),
        .Q(sck_i_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h1F01FFFF1F010000)) 
    test_give_response_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(test_give_response1_out),
        .I5(test_give_response),
        .O(test_give_response_i_1_n_0));
  LUT6 #(
    .INIT(64'h0154155500001554)) 
    test_give_response_i_2
       (.I0(rst),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\response_test_byte_i[7]_i_3_n_0 ),
        .O(test_give_response1_out));
  FDRE test_give_response_reg
       (.C(clk),
        .CE(1'b1),
        .D(test_give_response_i_1_n_0),
        .Q(test_give_response),
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
