// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr  7 09:53:29 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/UART/Read_GNSS/Read_GNSS.gen/sources_1/bd/GNSS_Reader/ip/GNSS_Reader_UART_RXmod_0_0/GNSS_Reader_UART_RXmod_0_0_sim_netlist.v
// Design      : GNSS_Reader_UART_RXmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GNSS_Reader_UART_RXmod_0_0,UART_RXmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "UART_RXmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module GNSS_Reader_UART_RXmod_0_0
   (sysclk,
    i_RX_Serial,
    o_RX_DV,
    o_RX_byte);
  input sysclk;
  input i_RX_Serial;
  output o_RX_DV;
  output [7:0]o_RX_byte;

  wire i_RX_Serial;
  wire o_RX_DV;
  wire [7:0]o_RX_byte;
  wire sysclk;

  GNSS_Reader_UART_RXmod_0_0_UART_RXmod U0
       (.i_RX_Serial(i_RX_Serial),
        .o_RX_DV(o_RX_DV),
        .o_RX_byte(o_RX_byte),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "UART_RXmod" *) 
module GNSS_Reader_UART_RXmod_0_0_UART_RXmod
   (o_RX_byte,
    o_RX_DV,
    i_RX_Serial,
    sysclk);
  output [7:0]o_RX_byte;
  output o_RX_DV;
  input i_RX_Serial;
  input sysclk;

  wire i_RX_Serial;
  wire o_RX_DV;
  wire [7:0]o_RX_byte;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire \r_Clk_Count[0]_i_1_n_0 ;
  wire \r_Clk_Count[10]_i_1_n_0 ;
  wire \r_Clk_Count[10]_i_2_n_0 ;
  wire \r_Clk_Count[10]_i_3_n_0 ;
  wire \r_Clk_Count[1]_i_1_n_0 ;
  wire \r_Clk_Count[2]_i_1_n_0 ;
  wire \r_Clk_Count[3]_i_1_n_0 ;
  wire \r_Clk_Count[4]_i_1_n_0 ;
  wire \r_Clk_Count[5]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_1_n_0 ;
  wire \r_Clk_Count[7]_i_1_n_0 ;
  wire \r_Clk_Count[8]_i_1_n_0 ;
  wire \r_Clk_Count[8]_i_2_n_0 ;
  wire \r_Clk_Count[8]_i_3_n_0 ;
  wire \r_Clk_Count[8]_i_4_n_0 ;
  wire \r_Clk_Count[8]_i_5_n_0 ;
  wire \r_Clk_Count[8]_i_6_n_0 ;
  wire \r_Clk_Count[8]_i_7_n_0 ;
  wire \r_Clk_Count[9]_i_1_n_0 ;
  wire \r_Clk_Count[9]_i_2_n_0 ;
  wire \r_Clk_Count_reg_n_0_[0] ;
  wire \r_Clk_Count_reg_n_0_[10] ;
  wire \r_Clk_Count_reg_n_0_[1] ;
  wire \r_Clk_Count_reg_n_0_[2] ;
  wire \r_Clk_Count_reg_n_0_[3] ;
  wire \r_Clk_Count_reg_n_0_[4] ;
  wire \r_Clk_Count_reg_n_0_[5] ;
  wire \r_Clk_Count_reg_n_0_[6] ;
  wire \r_Clk_Count_reg_n_0_[7] ;
  wire \r_Clk_Count_reg_n_0_[8] ;
  wire \r_Clk_Count_reg_n_0_[9] ;
  wire \r_RX_Byte[0]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_1_n_0 ;
  wire \r_RX_Byte[2]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_1_n_0 ;
  wire \r_RX_Byte[4]_i_1_n_0 ;
  wire \r_RX_Byte[5]_i_1_n_0 ;
  wire \r_RX_Byte[6]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_2_n_0 ;
  wire \r_RX_Byte[7]_i_3_n_0 ;
  wire \r_RX_Byte[7]_i_4_n_0 ;
  wire r_RX_DV_i_1_n_0;
  wire r_RX_DV_i_2_n_0;
  wire r_RX_DV_i_3_n_0;
  wire r_RX_DV_i_4_n_0;
  wire r_RX_Data;
  wire r_RX_Data_R;
  wire \r_SM_Main[0]_i_1_n_0 ;
  wire \r_SM_Main[0]_i_2_n_0 ;
  wire \r_SM_Main[0]_i_3_n_0 ;
  wire \r_SM_Main[1]_i_1_n_0 ;
  wire \r_SM_Main[1]_i_2_n_0 ;
  wire \r_SM_Main[1]_i_3_n_0 ;
  wire \r_SM_Main[1]_i_4_n_0 ;
  wire \r_SM_Main[2]_i_1_n_0 ;
  wire \r_SM_Main_reg_n_0_[0] ;
  wire \r_SM_Main_reg_n_0_[1] ;
  wire \r_SM_Main_reg_n_0_[2] ;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAA9A0)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(\r_SM_Main_reg_n_0_[1] ),
        .I4(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA9AAA00)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_SM_Main_reg_n_0_[2] ),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9AA00)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_Bit_Index[2]_i_2_n_0 ),
        .I3(\r_SM_Main_reg_n_0_[2] ),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Bit_Index[2]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
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
  LUT6 #(
    .INIT(64'h00000000E0EE0000)) 
    \r_Clk_Count[0]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[0] ),
        .I1(\r_SM_Main_reg_n_0_[1] ),
        .I2(\r_Clk_Count[8]_i_4_n_0 ),
        .I3(\r_Clk_Count[8]_i_5_n_0 ),
        .I4(r_RX_DV_i_2_n_0),
        .I5(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0400)) 
    \r_Clk_Count[10]_i_1 
       (.I0(\r_Clk_Count[10]_i_2_n_0 ),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_Clk_Count[10]_i_3_n_0 ),
        .I3(\r_Clk_Count[8]_i_2_n_0 ),
        .I4(\r_Clk_Count_reg_n_0_[10] ),
        .O(\r_Clk_Count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \r_Clk_Count[10]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[7] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[6] ),
        .I3(\r_Clk_Count[8]_i_7_n_0 ),
        .I4(\r_Clk_Count_reg_n_0_[8] ),
        .I5(\r_Clk_Count_reg_n_0_[9] ),
        .O(\r_Clk_Count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000555700005555)) 
    \r_Clk_Count[10]_i_3 
       (.I0(\r_SM_Main_reg_n_0_[0] ),
        .I1(\r_SM_Main[1]_i_4_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_Clk_Count[8]_i_5_n_0 ),
        .O(\r_Clk_Count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Clk_Count[1]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \r_Clk_Count[2]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_Clk_Count[3]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_Clk_Count[4]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[4] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_Clk_Count[5]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_Clk_Count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \r_Clk_Count[6]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count[8]_i_7_n_0 ),
        .O(\r_Clk_Count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \r_Clk_Count[7]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[7] ),
        .I1(\r_Clk_Count[8]_i_7_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02AA0202AAAAAAAA)) 
    \r_Clk_Count[8]_i_1 
       (.I0(\r_Clk_Count[8]_i_2_n_0 ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_Clk_Count[8]_i_4_n_0 ),
        .I4(\r_Clk_Count[8]_i_5_n_0 ),
        .I5(r_RX_DV_i_2_n_0),
        .O(\r_Clk_Count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555515555555555)) 
    \r_Clk_Count[8]_i_2 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_Clk_Count[8]_i_5_n_0 ),
        .I2(\r_Clk_Count[8]_i_6_n_0 ),
        .I3(\r_SM_Main_reg_n_0_[0] ),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(r_RX_Data),
        .O(\r_Clk_Count[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \r_Clk_Count[8]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count[8]_i_7_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[6] ),
        .I3(\r_Clk_Count_reg_n_0_[5] ),
        .I4(\r_Clk_Count_reg_n_0_[7] ),
        .O(\r_Clk_Count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \r_Clk_Count[8]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[9] ),
        .I3(\r_Clk_Count_reg_n_0_[0] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .I5(\r_SM_Main_reg_n_0_[1] ),
        .O(\r_Clk_Count[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \r_Clk_Count[8]_i_5 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[8] ),
        .I3(\r_Clk_Count_reg_n_0_[10] ),
        .I4(\r_Clk_Count_reg_n_0_[7] ),
        .I5(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F7FFF7F)) 
    \r_Clk_Count[8]_i_6 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[9] ),
        .I3(\r_Clk_Count_reg_n_0_[0] ),
        .I4(\r_Clk_Count_reg_n_0_[1] ),
        .I5(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_Clk_Count[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_Clk_Count[8]_i_7 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_Clk_Count[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h20FF0200)) 
    \r_Clk_Count[9]_i_1 
       (.I0(r_RX_DV_i_2_n_0),
        .I1(\r_Clk_Count[10]_i_3_n_0 ),
        .I2(\r_Clk_Count[9]_i_2_n_0 ),
        .I3(\r_Clk_Count[8]_i_2_n_0 ),
        .I4(\r_Clk_Count_reg_n_0_[9] ),
        .O(\r_Clk_Count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \r_Clk_Count[9]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count[8]_i_7_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[6] ),
        .I3(\r_Clk_Count_reg_n_0_[5] ),
        .I4(\r_Clk_Count_reg_n_0_[7] ),
        .O(\r_Clk_Count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_Clk_Count[10]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[1]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[1] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[2]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[2] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[3]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[3] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[4]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[4] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[5]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[5] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[6]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[6] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[7] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[7]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[7] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[8] 
       (.C(sysclk),
        .CE(\r_Clk_Count[8]_i_2_n_0 ),
        .D(\r_Clk_Count[8]_i_3_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[8] ),
        .R(\r_Clk_Count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_Clk_Count[9]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r_RX_Byte[0]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_RX_Byte[7]_i_2_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[2] ),
        .I5(o_RX_byte[0]),
        .O(\r_RX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_RX_Byte[1]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_RX_Byte[7]_i_2_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[2] ),
        .I5(o_RX_byte[1]),
        .O(\r_RX_Byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_RX_Byte[2]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_RX_Byte[7]_i_2_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[2] ),
        .I5(o_RX_byte[2]),
        .O(\r_RX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[3]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_RX_Byte[7]_i_2_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[2] ),
        .I5(o_RX_byte[3]),
        .O(\r_RX_Byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \r_RX_Byte[4]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_byte[4]),
        .O(\r_RX_Byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_RX_Byte[5]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_byte[5]),
        .O(\r_RX_Byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_RX_Byte[6]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_byte[6]),
        .O(\r_RX_Byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_RX_Byte[7]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[7]_i_2_n_0 ),
        .I2(\r_Bit_Index_reg_n_0_[2] ),
        .I3(\r_Bit_Index_reg_n_0_[0] ),
        .I4(\r_Bit_Index_reg_n_0_[1] ),
        .I5(o_RX_byte[7]),
        .O(\r_RX_Byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7775FFFFFFFFFFFF)) 
    \r_RX_Byte[7]_i_2 
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_RX_Byte[7]_i_3_n_0 ),
        .I2(r_RX_DV_i_4_n_0),
        .I3(r_RX_DV_i_3_n_0),
        .I4(\r_Clk_Count_reg_n_0_[10] ),
        .I5(\r_RX_Byte[7]_i_4_n_0 ),
        .O(\r_RX_Byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_RX_Byte[7]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count_reg_n_0_[9] ),
        .O(\r_RX_Byte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_RX_Byte[7]_i_4 
       (.I0(\r_SM_Main_reg_n_0_[0] ),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .O(\r_RX_Byte[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[0]_i_1_n_0 ),
        .Q(o_RX_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[1]_i_1_n_0 ),
        .Q(o_RX_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[2]_i_1_n_0 ),
        .Q(o_RX_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[3]_i_1_n_0 ),
        .Q(o_RX_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[4]_i_1_n_0 ),
        .Q(o_RX_byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[5]_i_1_n_0 ),
        .Q(o_RX_byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[6]_i_1_n_0 ),
        .Q(o_RX_byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RX_Byte[7]_i_1_n_0 ),
        .Q(o_RX_byte[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEEA0008)) 
    r_RX_DV_i_1
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(r_RX_DV_i_2_n_0),
        .I4(o_RX_DV),
        .O(r_RX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'h555555FDFFFFFFFF)) 
    r_RX_DV_i_2
       (.I0(\r_Clk_Count_reg_n_0_[10] ),
        .I1(r_RX_DV_i_3_n_0),
        .I2(r_RX_DV_i_4_n_0),
        .I3(\r_Clk_Count_reg_n_0_[9] ),
        .I4(\r_Clk_Count_reg_n_0_[8] ),
        .I5(\r_SM_Main_reg_n_0_[1] ),
        .O(r_RX_DV_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    r_RX_DV_i_3
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[7] ),
        .O(r_RX_DV_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    r_RX_DV_i_4
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .O(r_RX_DV_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(r_RX_DV_i_1_n_0),
        .Q(o_RX_DV),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_R_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(i_RX_Serial),
        .Q(r_RX_Data_R),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(r_RX_Data_R),
        .Q(r_RX_Data),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5444544444444454)) 
    \r_SM_Main[0]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_SM_Main[0]_i_2_n_0 ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_SM_Main[1]_i_3_n_0 ),
        .I4(\r_SM_Main[0]_i_3_n_0 ),
        .I5(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_SM_Main[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h31013131)) 
    \r_SM_Main[0]_i_2 
       (.I0(r_RX_Data),
        .I1(\r_SM_Main_reg_n_0_[1] ),
        .I2(\r_SM_Main_reg_n_0_[0] ),
        .I3(\r_Clk_Count[8]_i_6_n_0 ),
        .I4(\r_Clk_Count[8]_i_5_n_0 ),
        .O(\r_SM_Main[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_SM_Main[0]_i_3 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_SM_Main[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5050515000500150)) 
    \r_SM_Main[1]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(r_RX_Data),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_SM_Main_reg_n_0_[0] ),
        .I4(\r_SM_Main[1]_i_2_n_0 ),
        .I5(\r_SM_Main[1]_i_3_n_0 ),
        .O(\r_SM_Main[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \r_SM_Main[1]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_SM_Main[1]_i_4_n_0 ),
        .I4(\r_Clk_Count[8]_i_5_n_0 ),
        .O(\r_SM_Main[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1110FFFF)) 
    \r_SM_Main[1]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count_reg_n_0_[9] ),
        .I2(r_RX_DV_i_4_n_0),
        .I3(r_RX_DV_i_3_n_0),
        .I4(\r_Clk_Count_reg_n_0_[10] ),
        .O(\r_SM_Main[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_SM_Main[1]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[9] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .O(\r_SM_Main[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \r_SM_Main[2]_i_1 
       (.I0(r_RX_DV_i_2_n_0),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .I2(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_SM_Main[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_SM_Main[0]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_SM_Main[1]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_SM_Main[2]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[2] ),
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
