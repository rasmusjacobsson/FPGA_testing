// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep  2 15:08:20 2025
// Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rjaco/Documents/Skolgrejs/FPGA_testing/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_sim_netlist.v
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

  wire \<const0> ;
  wire clk;
  wire reboot_trigger;

  assign led0 = \<const0> ;
  assign led1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  reboot_test_block_fpga_rebooter_0_0_fpga_rebooter U0
       (.clk(clk),
        .reboot_trigger(reboot_trigger));
endmodule

(* ORIG_REF_NAME = "fpga_rebooter" *) 
module reboot_test_block_fpga_rebooter_0_0_fpga_rebooter
   (clk,
    reboot_trigger);
  input clk;
  input reboot_trigger;

  wire CSIB;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [31:0]I;
  wire clk;
  wire icap_ce;
  wire \icap_din[0]_i_1_n_0 ;
  wire \icap_din[10]_i_1_n_0 ;
  wire \icap_din[11]_i_1_n_0 ;
  wire \icap_din[12]_i_1_n_0 ;
  wire \icap_din[13]_i_1_n_0 ;
  wire \icap_din[14]_i_1_n_0 ;
  wire \icap_din[15]_i_1_n_0 ;
  wire \icap_din[16]_i_1_n_0 ;
  wire \icap_din[17]_i_1_n_0 ;
  wire \icap_din[18]_i_1_n_0 ;
  wire \icap_din[19]_i_1_n_0 ;
  wire \icap_din[1]_i_1_n_0 ;
  wire \icap_din[20]_i_1_n_0 ;
  wire \icap_din[21]_i_1_n_0 ;
  wire \icap_din[22]_i_1_n_0 ;
  wire \icap_din[23]_i_1_n_0 ;
  wire \icap_din[24]_i_1_n_0 ;
  wire \icap_din[25]_i_1_n_0 ;
  wire \icap_din[26]_i_1_n_0 ;
  wire \icap_din[26]_i_2_n_0 ;
  wire \icap_din[27]_i_1_n_0 ;
  wire \icap_din[28]_i_1_n_0 ;
  wire \icap_din[29]_i_1_n_0 ;
  wire \icap_din[2]_i_1_n_0 ;
  wire \icap_din[30]_i_1_n_0 ;
  wire \icap_din[31]_i_1_n_0 ;
  wire \icap_din[3]_i_1_n_0 ;
  wire \icap_din[4]_i_1_n_0 ;
  wire \icap_din[5]_i_1_n_0 ;
  wire \icap_din[6]_i_1_n_0 ;
  wire \icap_din[7]_i_1_n_0 ;
  wire \icap_din[8]_i_1_n_0 ;
  wire \icap_din[9]_i_1_n_0 ;
  wire reboot_trigger;
  wire [31:0]NLW_ICAPE2_0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(reboot_trigger),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(reboot_trigger),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  ICAPE2 #(
    .DEVICE_ID(32'h03651093),
    .ICAP_WIDTH("X32"),
    .SIM_CFG_FILE_NAME("NONE")) 
    ICAPE2_0
       (.CLK(clk),
        .CSIB(CSIB),
        .I(I),
        .O(NLW_ICAPE2_0_O_UNCONNECTED[31:0]),
        .RDWRB(CSIB));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    icap_ce_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(reboot_trigger),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(icap_ce));
  FDRE icap_ce_reg
       (.C(clk),
        .CE(1'b1),
        .D(icap_ce),
        .Q(CSIB),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icap_din[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\icap_din[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icap_din[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\icap_din[26]_i_2_n_0 ),
        .O(\icap_din[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[26]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icap_din[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\icap_din[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icap_din[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\icap_din[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icap_din[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\icap_din[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icap_din[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\icap_din[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \icap_din[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\icap_din[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icap_din[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\icap_din[9]_i_1_n_0 ));
  FDSE \icap_din_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[0]_i_1_n_0 ),
        .Q(I[0]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDSE \icap_din_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[10]_i_1_n_0 ),
        .Q(I[10]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[11]_i_1_n_0 ),
        .Q(I[11]),
        .R(1'b0));
  FDSE \icap_din_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[12]_i_1_n_0 ),
        .Q(I[12]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[13]_i_1_n_0 ),
        .Q(I[13]),
        .R(1'b0));
  FDSE \icap_din_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[14]_i_1_n_0 ),
        .Q(I[14]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[15]_i_1_n_0 ),
        .Q(I[15]),
        .R(1'b0));
  FDRE \icap_din_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[16]_i_1_n_0 ),
        .Q(I[16]),
        .R(1'b0));
  FDSE \icap_din_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[17]_i_1_n_0 ),
        .Q(I[17]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDSE \icap_din_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[18]_i_1_n_0 ),
        .Q(I[18]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[19]_i_1_n_0 ),
        .Q(I[19]),
        .R(1'b0));
  FDRE \icap_din_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[1]_i_1_n_0 ),
        .Q(I[1]),
        .R(1'b0));
  FDRE \icap_din_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[20]_i_1_n_0 ),
        .Q(I[20]),
        .R(1'b0));
  FDSE \icap_din_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[21]_i_1_n_0 ),
        .Q(I[21]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[22]_i_1_n_0 ),
        .Q(I[22]),
        .R(1'b0));
  FDRE \icap_din_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[23]_i_1_n_0 ),
        .Q(I[23]),
        .R(1'b0));
  FDRE \icap_din_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[24]_i_1_n_0 ),
        .Q(I[24]),
        .R(1'b0));
  FDSE \icap_din_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[25]_i_1_n_0 ),
        .Q(I[25]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[26]_i_1_n_0 ),
        .Q(I[26]),
        .R(1'b0));
  FDRE \icap_din_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[27]_i_1_n_0 ),
        .Q(I[27]),
        .R(1'b0));
  FDRE \icap_din_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[28]_i_1_n_0 ),
        .Q(I[28]),
        .R(1'b0));
  FDSE \icap_din_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[29]_i_1_n_0 ),
        .Q(I[29]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[2]_i_1_n_0 ),
        .Q(I[2]),
        .R(1'b0));
  FDRE \icap_din_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[30]_i_1_n_0 ),
        .Q(I[30]),
        .R(1'b0));
  FDSE \icap_din_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[31]_i_1_n_0 ),
        .Q(I[31]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDSE \icap_din_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[3]_i_1_n_0 ),
        .Q(I[3]),
        .S(\FSM_onehot_state_reg_n_0_[1] ));
  FDRE \icap_din_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[4]_i_1_n_0 ),
        .Q(I[4]),
        .R(1'b0));
  FDRE \icap_din_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[5]_i_1_n_0 ),
        .Q(I[5]),
        .R(1'b0));
  FDRE \icap_din_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[6]_i_1_n_0 ),
        .Q(I[6]),
        .R(1'b0));
  FDRE \icap_din_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[7]_i_1_n_0 ),
        .Q(I[7]),
        .R(1'b0));
  FDRE \icap_din_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[8]_i_1_n_0 ),
        .Q(I[8]),
        .R(1'b0));
  FDRE \icap_din_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\icap_din[9]_i_1_n_0 ),
        .Q(I[9]),
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
