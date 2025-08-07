-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Aug  5 20:19:07 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/I2C_Reader_NO_TX_inst_0/ip/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_sim_netlist.vhdl
-- Design      : I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_Read_Sensorsmod is
  port (
    o_i2c_address : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena : out STD_LOGIC;
    o_i2c_rw : out STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    led2 : out STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n : in STD_LOGIC;
    i_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_Read_Sensorsmod : entity is "Read_Sensorsmod";
end I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_Read_Sensorsmod;

architecture STRUCTURE of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_Read_Sensorsmod is
  signal \FSM_sequential_Main.mess_cnt_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Main.mess_cnt_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Main.mess_cnt_reg_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[1]_i_4_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[1]_i_5_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \Main.busy_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Main.busy_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Main.busy_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Main.conv_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt_reg\ : STD_LOGIC_VECTOR ( 16 downto 6 );
  signal \Main.conv_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Main.conv_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Main.conv_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg\ : STD_LOGIC_VECTOR ( 25 downto 8 );
  signal \Main.sec_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Main.sec_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Main.sec_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Main.sensor_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sensor_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Main.sensor_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \Main.sensor_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Main.sensor_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal TX_done_prev_i_1_n_0 : STD_LOGIC;
  signal TX_done_prev_reg_n_0 : STD_LOGIC;
  signal alt_data : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \alt_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[9]\ : STD_LOGIC;
  signal busy_cnt : STD_LOGIC;
  signal busy_prev_reg_n_0 : STD_LOGIC;
  signal conv_cnt : STD_LOGIC;
  signal in14 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in16 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in18 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^led2\ : STD_LOGIC;
  signal led2_i_1_n_0 : STD_LOGIC;
  signal led2_i_2_n_0 : STD_LOGIC;
  signal led2_i_3_n_0 : STD_LOGIC;
  signal led2_i_4_n_0 : STD_LOGIC;
  signal led2_i_5_n_0 : STD_LOGIC;
  signal led2_i_6_n_0 : STD_LOGIC;
  signal led2_i_7_n_0 : STD_LOGIC;
  signal \^o_tx_dv\ : STD_LOGIC;
  signal o_TX_DV_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_i_2_n_0 : STD_LOGIC;
  signal o_TX_DV_i_3_n_0 : STD_LOGIC;
  signal o_TX_DV_i_4_n_0 : STD_LOGIC;
  signal o_TX_DV_i_5_n_0 : STD_LOGIC;
  signal o_TX_DV_i_6_n_0 : STD_LOGIC;
  signal o_TX_DV_i_7_n_0 : STD_LOGIC;
  signal o_TX_DV_i_8_n_0 : STD_LOGIC;
  signal o_TX_data0 : STD_LOGIC;
  signal \o_TX_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_8_n_0\ : STD_LOGIC;
  signal o_i2c_address0 : STD_LOGIC;
  signal \o_i2c_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_4_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_5_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_6_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_7_n_0\ : STD_LOGIC;
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal o_i2c_data_wr0 : STD_LOGIC;
  signal \o_i2c_data_wr[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_1_n_0\ : STD_LOGIC;
  signal \^o_i2c_ena\ : STD_LOGIC;
  signal o_i2c_ena_i_10_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_11_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_1_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_2_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_3_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_4_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_5_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_6_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_7_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_8_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_9_n_0 : STD_LOGIC;
  signal \^o_i2c_rw\ : STD_LOGIC;
  signal o_i2c_rw_i_1_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_2_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_3_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_4_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_5_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_6_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_7_n_0 : STD_LOGIC;
  signal rtc_data : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \rtc_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[9]\ : STD_LOGIC;
  signal sensor_cnt : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp_data : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \temp_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_Main.conv_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Main.conv_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_Main.mess_cnt_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_Main.mess_cnt_reg\ : label is "iSTATE:0,iSTATE0:1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "prep_alt:0011,alt_read:0100,send_temp:0010,temp:0001,start:0000,rtc:0111,send_alt:0110,send_rtc:1000,alt:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "prep_alt:0011,alt_read:0100,send_temp:0010,temp:0001,start:0000,rtc:0111,send_alt:0110,send_rtc:1000,alt:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "prep_alt:0011,alt_read:0100,send_temp:0010,temp:0001,start:0000,rtc:0111,send_alt:0110,send_rtc:1000,alt:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "prep_alt:0011,alt_read:0100,send_temp:0010,temp:0001,start:0000,rtc:0111,send_alt:0110,send_rtc:1000,alt:0101";
  attribute SOFT_HLUTNM of \Main.busy_cnt[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Main.busy_cnt[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Main.busy_cnt[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Main.busy_cnt[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Main.conv_cnt[0]_i_3\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Main.conv_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.conv_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.conv_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.conv_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.conv_cnt_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Main.sec_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \Main.sensor_cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Main.sensor_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Main.sensor_cnt[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_TX_DV_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_TX_DV_i_7 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of o_TX_DV_i_8 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_TX_data[7]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_TX_data[7]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_i2c_address[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_i2c_address[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_i2c_address[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_i2c_ena_i_10 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of o_i2c_ena_i_11 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of o_i2c_ena_i_7 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_i2c_ena_i_9 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_i2c_rw_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of o_i2c_rw_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of o_i2c_rw_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of o_i2c_rw_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_i2c_rw_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_data[15]_i_2\ : label is "soft_lutpair13";
begin
  led2 <= \^led2\;
  o_TX_DV <= \^o_tx_dv\;
  o_i2c_data_wr(2 downto 0) <= \^o_i2c_data_wr\(2 downto 0);
  o_i2c_ena <= \^o_i2c_ena\;
  o_i2c_rw <= \^o_i2c_rw\;
\FSM_sequential_Main.mess_cnt_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DAF0"
    )
        port map (
      I0 => i_TX_done,
      I1 => TX_done_prev_reg_n_0,
      I2 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I3 => \FSM_sequential_Main.mess_cnt_i_2_n_0\,
      O => \FSM_sequential_Main.mess_cnt_i_1_n_0\
    );
\FSM_sequential_Main.mess_cnt_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      O => \FSM_sequential_Main.mess_cnt_i_2_n_0\
    );
\FSM_sequential_Main.mess_cnt_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => \FSM_sequential_Main.mess_cnt_i_1_n_0\,
      Q => \FSM_sequential_Main.mess_cnt_reg_n_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA000000FE"
    )
        port map (
      I0 => state(0),
      I1 => \Main.sensor_cnt_reg_n_0_[1]\,
      I2 => \Main.sensor_cnt_reg_n_0_[0]\,
      I3 => state(1),
      I4 => state(3),
      I5 => state(2),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0C02"
    )
        port map (
      I0 => \Main.sensor_cnt_reg_n_0_[1]\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      O => \state__0\(2)
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_4_n_0\,
      I2 => \FSM_sequential_state[3]_i_5_n_0\,
      I3 => \FSM_sequential_state[3]_i_6_n_0\,
      I4 => \Main.sec_cnt[0]_i_1_n_0\,
      I5 => led2_i_2_n_0,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I1 => i_TX_done,
      I2 => TX_done_prev_reg_n_0,
      I3 => \FSM_sequential_Main.mess_cnt_i_2_n_0\,
      I4 => rtc_data(7),
      I5 => alt_data(7),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0104000401000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      I4 => \o_TX_data[7]_i_4_n_0\,
      I5 => i_TX_done,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100300"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[0]\,
      I1 => \Main.busy_cnt_reg_n_0_[2]\,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => i_busy,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \state__0\(3),
      Q => state(3)
    );
\Main.busy_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FF80FF00"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_2_n_0\,
      I1 => state(0),
      I2 => \Main.busy_cnt[0]_i_3_n_0\,
      I3 => \Main.busy_cnt[0]_i_4_n_0\,
      I4 => o_i2c_rw_i_2_n_0,
      I5 => \Main.busy_cnt[1]_i_5_n_0\,
      O => \Main.busy_cnt[0]_i_1_n_0\
    );
\Main.busy_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      O => \Main.busy_cnt[0]_i_2_n_0\
    );
\Main.busy_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10FFFFFF"
    )
        port map (
      I0 => \Main.conv_cnt_reg\(11),
      I1 => \Main.conv_cnt_reg\(13),
      I2 => \Main.busy_cnt[0]_i_5_n_0\,
      I3 => \Main.conv_cnt_reg\(15),
      I4 => \Main.conv_cnt_reg\(16),
      I5 => \Main.busy_cnt[0]_i_6_n_0\,
      O => \Main.busy_cnt[0]_i_3_n_0\
    );
\Main.busy_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB00000B0B00000"
    )
        port map (
      I0 => o_TX_DV_i_3_n_0,
      I1 => \Main.busy_cnt[1]_i_4_n_0\,
      I2 => \o_i2c_address[6]_i_4_n_0\,
      I3 => \Main.busy_cnt[1]_i_2_n_0\,
      I4 => o_i2c_rw_i_2_n_0,
      I5 => i_busy,
      O => \Main.busy_cnt[0]_i_4_n_0\
    );
\Main.busy_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0007FFFF"
    )
        port map (
      I0 => \Main.conv_cnt_reg\(6),
      I1 => \Main.conv_cnt_reg\(7),
      I2 => \Main.conv_cnt_reg\(8),
      I3 => \Main.conv_cnt_reg\(9),
      I4 => \Main.conv_cnt_reg\(10),
      O => \Main.busy_cnt[0]_i_5_n_0\
    );
\Main.busy_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \Main.conv_cnt_reg\(12),
      I1 => \Main.conv_cnt_reg\(13),
      I2 => \Main.conv_cnt_reg\(14),
      O => \Main.busy_cnt[0]_i_6_n_0\
    );
\Main.busy_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4440000"
    )
        port map (
      I0 => o_i2c_rw_i_2_n_0,
      I1 => \Main.busy_cnt[1]_i_2_n_0\,
      I2 => \o_i2c_address[6]_i_4_n_0\,
      I3 => \Main.busy_cnt[1]_i_3_n_0\,
      I4 => \Main.busy_cnt[1]_i_4_n_0\,
      I5 => \Main.busy_cnt[1]_i_5_n_0\,
      O => \Main.busy_cnt[1]_i_1_n_0\
    );
\Main.busy_cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      O => \Main.busy_cnt[1]_i_2_n_0\
    );
\Main.busy_cnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => i_busy,
      O => \Main.busy_cnt[1]_i_3_n_0\
    );
\Main.busy_cnt[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[0]\,
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      I3 => \Main.busy_cnt_reg_n_0_[1]\,
      O => \Main.busy_cnt[1]_i_4_n_0\
    );
\Main.busy_cnt[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ACCC0C0C"
    )
        port map (
      I0 => \Main.busy_cnt[2]_i_3_n_0\,
      I1 => o_i2c_ena_i_10_n_0,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => state(3),
      O => \Main.busy_cnt[1]_i_5_n_0\
    );
\Main.busy_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0E"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      O => busy_cnt
    );
\Main.busy_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888F888"
    )
        port map (
      I0 => \o_i2c_address[6]_i_4_n_0\,
      I1 => o_TX_DV_i_3_n_0,
      I2 => i_busy,
      I3 => \state__0\(3),
      I4 => \Main.busy_cnt[2]_i_3_n_0\,
      I5 => \Main.busy_cnt[2]_i_4_n_0\,
      O => \Main.busy_cnt[2]_i_2_n_0\
    );
\Main.busy_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFDFDD"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => \Main.busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \Main.busy_cnt_reg_n_0_[1]\,
      O => \Main.busy_cnt[2]_i_3_n_0\
    );
\Main.busy_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444444444444"
    )
        port map (
      I0 => state(3),
      I1 => o_TX_DV_i_3_n_0,
      I2 => o_i2c_rw_i_2_n_0,
      I3 => \Main.busy_cnt[1]_i_4_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => \Main.busy_cnt[2]_i_4_n_0\
    );
\Main.busy_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => busy_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.busy_cnt[0]_i_1_n_0\,
      Q => \Main.busy_cnt_reg_n_0_[0]\
    );
\Main.busy_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => busy_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.busy_cnt[1]_i_1_n_0\,
      Q => \Main.busy_cnt_reg_n_0_[1]\
    );
\Main.busy_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => busy_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.busy_cnt[2]_i_2_n_0\,
      Q => \Main.busy_cnt_reg_n_0_[2]\
    );
\Main.conv_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A208"
    )
        port map (
      I0 => \Main.conv_cnt[0]_i_3_n_0\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      I5 => \Main.busy_cnt_reg_n_0_[1]\,
      O => conv_cnt
    );
\Main.conv_cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => \Main.conv_cnt[0]_i_3_n_0\
    );
\Main.conv_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg_n_0_[3]\,
      O => \Main.conv_cnt[0]_i_4_n_0\
    );
\Main.conv_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg_n_0_[2]\,
      O => \Main.conv_cnt[0]_i_5_n_0\
    );
\Main.conv_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg_n_0_[1]\,
      O => \Main.conv_cnt[0]_i_6_n_0\
    );
\Main.conv_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \Main.conv_cnt_reg_n_0_[0]\,
      I1 => \Main.busy_cnt[0]_i_3_n_0\,
      O => \Main.conv_cnt[0]_i_7_n_0\
    );
\Main.conv_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(15),
      O => \Main.conv_cnt[12]_i_2_n_0\
    );
\Main.conv_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(14),
      O => \Main.conv_cnt[12]_i_3_n_0\
    );
\Main.conv_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(13),
      O => \Main.conv_cnt[12]_i_4_n_0\
    );
\Main.conv_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(12),
      O => \Main.conv_cnt[12]_i_5_n_0\
    );
\Main.conv_cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(16),
      O => \Main.conv_cnt[16]_i_2_n_0\
    );
\Main.conv_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(7),
      O => \Main.conv_cnt[4]_i_2_n_0\
    );
\Main.conv_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(6),
      O => \Main.conv_cnt[4]_i_3_n_0\
    );
\Main.conv_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg_n_0_[5]\,
      O => \Main.conv_cnt[4]_i_4_n_0\
    );
\Main.conv_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg_n_0_[4]\,
      O => \Main.conv_cnt[4]_i_5_n_0\
    );
\Main.conv_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(11),
      O => \Main.conv_cnt[8]_i_2_n_0\
    );
\Main.conv_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(10),
      O => \Main.conv_cnt[8]_i_3_n_0\
    );
\Main.conv_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(9),
      O => \Main.conv_cnt[8]_i_4_n_0\
    );
\Main.conv_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Main.busy_cnt[0]_i_3_n_0\,
      I1 => \Main.conv_cnt_reg\(8),
      O => \Main.conv_cnt[8]_i_5_n_0\
    );
\Main.conv_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[0]_i_2_n_7\,
      Q => \Main.conv_cnt_reg_n_0_[0]\
    );
\Main.conv_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Main.conv_cnt_reg[0]_i_2_n_0\,
      CO(2) => \Main.conv_cnt_reg[0]_i_2_n_1\,
      CO(1) => \Main.conv_cnt_reg[0]_i_2_n_2\,
      CO(0) => \Main.conv_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Main.busy_cnt[0]_i_3_n_0\,
      O(3) => \Main.conv_cnt_reg[0]_i_2_n_4\,
      O(2) => \Main.conv_cnt_reg[0]_i_2_n_5\,
      O(1) => \Main.conv_cnt_reg[0]_i_2_n_6\,
      O(0) => \Main.conv_cnt_reg[0]_i_2_n_7\,
      S(3) => \Main.conv_cnt[0]_i_4_n_0\,
      S(2) => \Main.conv_cnt[0]_i_5_n_0\,
      S(1) => \Main.conv_cnt[0]_i_6_n_0\,
      S(0) => \Main.conv_cnt[0]_i_7_n_0\
    );
\Main.conv_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[8]_i_1_n_5\,
      Q => \Main.conv_cnt_reg\(10)
    );
\Main.conv_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[8]_i_1_n_4\,
      Q => \Main.conv_cnt_reg\(11)
    );
\Main.conv_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[12]_i_1_n_7\,
      Q => \Main.conv_cnt_reg\(12)
    );
\Main.conv_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.conv_cnt_reg[8]_i_1_n_0\,
      CO(3) => \Main.conv_cnt_reg[12]_i_1_n_0\,
      CO(2) => \Main.conv_cnt_reg[12]_i_1_n_1\,
      CO(1) => \Main.conv_cnt_reg[12]_i_1_n_2\,
      CO(0) => \Main.conv_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.conv_cnt_reg[12]_i_1_n_4\,
      O(2) => \Main.conv_cnt_reg[12]_i_1_n_5\,
      O(1) => \Main.conv_cnt_reg[12]_i_1_n_6\,
      O(0) => \Main.conv_cnt_reg[12]_i_1_n_7\,
      S(3) => \Main.conv_cnt[12]_i_2_n_0\,
      S(2) => \Main.conv_cnt[12]_i_3_n_0\,
      S(1) => \Main.conv_cnt[12]_i_4_n_0\,
      S(0) => \Main.conv_cnt[12]_i_5_n_0\
    );
\Main.conv_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[12]_i_1_n_6\,
      Q => \Main.conv_cnt_reg\(13)
    );
\Main.conv_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[12]_i_1_n_5\,
      Q => \Main.conv_cnt_reg\(14)
    );
\Main.conv_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[12]_i_1_n_4\,
      Q => \Main.conv_cnt_reg\(15)
    );
\Main.conv_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[16]_i_1_n_7\,
      Q => \Main.conv_cnt_reg\(16)
    );
\Main.conv_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.conv_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_Main.conv_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Main.conv_cnt_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \Main.conv_cnt_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \Main.conv_cnt[16]_i_2_n_0\
    );
\Main.conv_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[0]_i_2_n_6\,
      Q => \Main.conv_cnt_reg_n_0_[1]\
    );
\Main.conv_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[0]_i_2_n_5\,
      Q => \Main.conv_cnt_reg_n_0_[2]\
    );
\Main.conv_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[0]_i_2_n_4\,
      Q => \Main.conv_cnt_reg_n_0_[3]\
    );
\Main.conv_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[4]_i_1_n_7\,
      Q => \Main.conv_cnt_reg_n_0_[4]\
    );
\Main.conv_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.conv_cnt_reg[0]_i_2_n_0\,
      CO(3) => \Main.conv_cnt_reg[4]_i_1_n_0\,
      CO(2) => \Main.conv_cnt_reg[4]_i_1_n_1\,
      CO(1) => \Main.conv_cnt_reg[4]_i_1_n_2\,
      CO(0) => \Main.conv_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.conv_cnt_reg[4]_i_1_n_4\,
      O(2) => \Main.conv_cnt_reg[4]_i_1_n_5\,
      O(1) => \Main.conv_cnt_reg[4]_i_1_n_6\,
      O(0) => \Main.conv_cnt_reg[4]_i_1_n_7\,
      S(3) => \Main.conv_cnt[4]_i_2_n_0\,
      S(2) => \Main.conv_cnt[4]_i_3_n_0\,
      S(1) => \Main.conv_cnt[4]_i_4_n_0\,
      S(0) => \Main.conv_cnt[4]_i_5_n_0\
    );
\Main.conv_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[4]_i_1_n_6\,
      Q => \Main.conv_cnt_reg_n_0_[5]\
    );
\Main.conv_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[4]_i_1_n_5\,
      Q => \Main.conv_cnt_reg\(6)
    );
\Main.conv_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[4]_i_1_n_4\,
      Q => \Main.conv_cnt_reg\(7)
    );
\Main.conv_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[8]_i_1_n_7\,
      Q => \Main.conv_cnt_reg\(8)
    );
\Main.conv_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.conv_cnt_reg[4]_i_1_n_0\,
      CO(3) => \Main.conv_cnt_reg[8]_i_1_n_0\,
      CO(2) => \Main.conv_cnt_reg[8]_i_1_n_1\,
      CO(1) => \Main.conv_cnt_reg[8]_i_1_n_2\,
      CO(0) => \Main.conv_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.conv_cnt_reg[8]_i_1_n_4\,
      O(2) => \Main.conv_cnt_reg[8]_i_1_n_5\,
      O(1) => \Main.conv_cnt_reg[8]_i_1_n_6\,
      O(0) => \Main.conv_cnt_reg[8]_i_1_n_7\,
      S(3) => \Main.conv_cnt[8]_i_2_n_0\,
      S(2) => \Main.conv_cnt[8]_i_3_n_0\,
      S(1) => \Main.conv_cnt[8]_i_4_n_0\,
      S(0) => \Main.conv_cnt[8]_i_5_n_0\
    );
\Main.conv_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => conv_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.conv_cnt_reg[8]_i_1_n_6\,
      Q => \Main.conv_cnt_reg\(9)
    );
\Main.sec_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      O => \Main.sec_cnt[0]_i_1_n_0\
    );
\Main.sec_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[0]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[0]_i_3_n_0\
    );
\Main.sec_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[3]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[0]_i_4_n_0\
    );
\Main.sec_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[2]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[0]_i_5_n_0\
    );
\Main.sec_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[1]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[0]_i_6_n_0\
    );
\Main.sec_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[0]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[0]_i_7_n_0\
    );
\Main.sec_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(15),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[12]_i_2_n_0\
    );
\Main.sec_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(14),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[12]_i_3_n_0\
    );
\Main.sec_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(13),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[12]_i_4_n_0\
    );
\Main.sec_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(12),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[12]_i_5_n_0\
    );
\Main.sec_cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(19),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[16]_i_2_n_0\
    );
\Main.sec_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(18),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[16]_i_3_n_0\
    );
\Main.sec_cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(17),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[16]_i_4_n_0\
    );
\Main.sec_cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(16),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[16]_i_5_n_0\
    );
\Main.sec_cnt[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(23),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[20]_i_2_n_0\
    );
\Main.sec_cnt[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(22),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[20]_i_3_n_0\
    );
\Main.sec_cnt[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(21),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[20]_i_4_n_0\
    );
\Main.sec_cnt[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(20),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[20]_i_5_n_0\
    );
\Main.sec_cnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(25),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[24]_i_2_n_0\
    );
\Main.sec_cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(24),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[24]_i_3_n_0\
    );
\Main.sec_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[7]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[4]_i_2_n_0\
    );
\Main.sec_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[6]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[4]_i_3_n_0\
    );
\Main.sec_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[5]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[4]_i_4_n_0\
    );
\Main.sec_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg_n_0_[4]\,
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[4]_i_5_n_0\
    );
\Main.sec_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(11),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[8]_i_2_n_0\
    );
\Main.sec_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(10),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[8]_i_3_n_0\
    );
\Main.sec_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(9),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[8]_i_4_n_0\
    );
\Main.sec_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(8),
      I1 => led2_i_2_n_0,
      O => \Main.sec_cnt[8]_i_5_n_0\
    );
\Main.sec_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[0]_i_2_n_7\,
      Q => \Main.sec_cnt_reg_n_0_[0]\
    );
\Main.sec_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Main.sec_cnt_reg[0]_i_2_n_0\,
      CO(2) => \Main.sec_cnt_reg[0]_i_2_n_1\,
      CO(1) => \Main.sec_cnt_reg[0]_i_2_n_2\,
      CO(0) => \Main.sec_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Main.sec_cnt[0]_i_3_n_0\,
      O(3) => \Main.sec_cnt_reg[0]_i_2_n_4\,
      O(2) => \Main.sec_cnt_reg[0]_i_2_n_5\,
      O(1) => \Main.sec_cnt_reg[0]_i_2_n_6\,
      O(0) => \Main.sec_cnt_reg[0]_i_2_n_7\,
      S(3) => \Main.sec_cnt[0]_i_4_n_0\,
      S(2) => \Main.sec_cnt[0]_i_5_n_0\,
      S(1) => \Main.sec_cnt[0]_i_6_n_0\,
      S(0) => \Main.sec_cnt[0]_i_7_n_0\
    );
\Main.sec_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[8]_i_1_n_5\,
      Q => \Main.sec_cnt_reg\(10)
    );
\Main.sec_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[8]_i_1_n_4\,
      Q => \Main.sec_cnt_reg\(11)
    );
\Main.sec_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[12]_i_1_n_7\,
      Q => \Main.sec_cnt_reg\(12)
    );
\Main.sec_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[8]_i_1_n_0\,
      CO(3) => \Main.sec_cnt_reg[12]_i_1_n_0\,
      CO(2) => \Main.sec_cnt_reg[12]_i_1_n_1\,
      CO(1) => \Main.sec_cnt_reg[12]_i_1_n_2\,
      CO(0) => \Main.sec_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.sec_cnt_reg[12]_i_1_n_4\,
      O(2) => \Main.sec_cnt_reg[12]_i_1_n_5\,
      O(1) => \Main.sec_cnt_reg[12]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[12]_i_1_n_7\,
      S(3) => \Main.sec_cnt[12]_i_2_n_0\,
      S(2) => \Main.sec_cnt[12]_i_3_n_0\,
      S(1) => \Main.sec_cnt[12]_i_4_n_0\,
      S(0) => \Main.sec_cnt[12]_i_5_n_0\
    );
\Main.sec_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[12]_i_1_n_6\,
      Q => \Main.sec_cnt_reg\(13)
    );
\Main.sec_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[12]_i_1_n_5\,
      Q => \Main.sec_cnt_reg\(14)
    );
\Main.sec_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[12]_i_1_n_4\,
      Q => \Main.sec_cnt_reg\(15)
    );
\Main.sec_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[16]_i_1_n_7\,
      Q => \Main.sec_cnt_reg\(16)
    );
\Main.sec_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[12]_i_1_n_0\,
      CO(3) => \Main.sec_cnt_reg[16]_i_1_n_0\,
      CO(2) => \Main.sec_cnt_reg[16]_i_1_n_1\,
      CO(1) => \Main.sec_cnt_reg[16]_i_1_n_2\,
      CO(0) => \Main.sec_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.sec_cnt_reg[16]_i_1_n_4\,
      O(2) => \Main.sec_cnt_reg[16]_i_1_n_5\,
      O(1) => \Main.sec_cnt_reg[16]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[16]_i_1_n_7\,
      S(3) => \Main.sec_cnt[16]_i_2_n_0\,
      S(2) => \Main.sec_cnt[16]_i_3_n_0\,
      S(1) => \Main.sec_cnt[16]_i_4_n_0\,
      S(0) => \Main.sec_cnt[16]_i_5_n_0\
    );
\Main.sec_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[16]_i_1_n_6\,
      Q => \Main.sec_cnt_reg\(17)
    );
\Main.sec_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[16]_i_1_n_5\,
      Q => \Main.sec_cnt_reg\(18)
    );
\Main.sec_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[16]_i_1_n_4\,
      Q => \Main.sec_cnt_reg\(19)
    );
\Main.sec_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[0]_i_2_n_6\,
      Q => \Main.sec_cnt_reg_n_0_[1]\
    );
\Main.sec_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[20]_i_1_n_7\,
      Q => \Main.sec_cnt_reg\(20)
    );
\Main.sec_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[16]_i_1_n_0\,
      CO(3) => \Main.sec_cnt_reg[20]_i_1_n_0\,
      CO(2) => \Main.sec_cnt_reg[20]_i_1_n_1\,
      CO(1) => \Main.sec_cnt_reg[20]_i_1_n_2\,
      CO(0) => \Main.sec_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.sec_cnt_reg[20]_i_1_n_4\,
      O(2) => \Main.sec_cnt_reg[20]_i_1_n_5\,
      O(1) => \Main.sec_cnt_reg[20]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[20]_i_1_n_7\,
      S(3) => \Main.sec_cnt[20]_i_2_n_0\,
      S(2) => \Main.sec_cnt[20]_i_3_n_0\,
      S(1) => \Main.sec_cnt[20]_i_4_n_0\,
      S(0) => \Main.sec_cnt[20]_i_5_n_0\
    );
\Main.sec_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[20]_i_1_n_6\,
      Q => \Main.sec_cnt_reg\(21)
    );
\Main.sec_cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[20]_i_1_n_5\,
      Q => \Main.sec_cnt_reg\(22)
    );
\Main.sec_cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[20]_i_1_n_4\,
      Q => \Main.sec_cnt_reg\(23)
    );
\Main.sec_cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[24]_i_1_n_7\,
      Q => \Main.sec_cnt_reg\(24)
    );
\Main.sec_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Main.sec_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \Main.sec_cnt_reg[24]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \Main.sec_cnt[24]_i_2_n_0\,
      S(0) => \Main.sec_cnt[24]_i_3_n_0\
    );
\Main.sec_cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[24]_i_1_n_6\,
      Q => \Main.sec_cnt_reg\(25)
    );
\Main.sec_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[0]_i_2_n_5\,
      Q => \Main.sec_cnt_reg_n_0_[2]\
    );
\Main.sec_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[0]_i_2_n_4\,
      Q => \Main.sec_cnt_reg_n_0_[3]\
    );
\Main.sec_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[4]_i_1_n_7\,
      Q => \Main.sec_cnt_reg_n_0_[4]\
    );
\Main.sec_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[0]_i_2_n_0\,
      CO(3) => \Main.sec_cnt_reg[4]_i_1_n_0\,
      CO(2) => \Main.sec_cnt_reg[4]_i_1_n_1\,
      CO(1) => \Main.sec_cnt_reg[4]_i_1_n_2\,
      CO(0) => \Main.sec_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.sec_cnt_reg[4]_i_1_n_4\,
      O(2) => \Main.sec_cnt_reg[4]_i_1_n_5\,
      O(1) => \Main.sec_cnt_reg[4]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[4]_i_1_n_7\,
      S(3) => \Main.sec_cnt[4]_i_2_n_0\,
      S(2) => \Main.sec_cnt[4]_i_3_n_0\,
      S(1) => \Main.sec_cnt[4]_i_4_n_0\,
      S(0) => \Main.sec_cnt[4]_i_5_n_0\
    );
\Main.sec_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[4]_i_1_n_6\,
      Q => \Main.sec_cnt_reg_n_0_[5]\
    );
\Main.sec_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[4]_i_1_n_5\,
      Q => \Main.sec_cnt_reg_n_0_[6]\
    );
\Main.sec_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[4]_i_1_n_4\,
      Q => \Main.sec_cnt_reg_n_0_[7]\
    );
\Main.sec_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[8]_i_1_n_7\,
      Q => \Main.sec_cnt_reg\(8)
    );
\Main.sec_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Main.sec_cnt_reg[4]_i_1_n_0\,
      CO(3) => \Main.sec_cnt_reg[8]_i_1_n_0\,
      CO(2) => \Main.sec_cnt_reg[8]_i_1_n_1\,
      CO(1) => \Main.sec_cnt_reg[8]_i_1_n_2\,
      CO(0) => \Main.sec_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Main.sec_cnt_reg[8]_i_1_n_4\,
      O(2) => \Main.sec_cnt_reg[8]_i_1_n_5\,
      O(1) => \Main.sec_cnt_reg[8]_i_1_n_6\,
      O(0) => \Main.sec_cnt_reg[8]_i_1_n_7\,
      S(3) => \Main.sec_cnt[8]_i_2_n_0\,
      S(2) => \Main.sec_cnt[8]_i_3_n_0\,
      S(1) => \Main.sec_cnt[8]_i_4_n_0\,
      S(0) => \Main.sec_cnt[8]_i_5_n_0\
    );
\Main.sec_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \Main.sec_cnt[0]_i_1_n_0\,
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sec_cnt_reg[8]_i_1_n_6\,
      Q => \Main.sec_cnt_reg\(9)
    );
\Main.sensor_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state(3),
      I1 => sensor_cnt,
      I2 => \Main.sensor_cnt_reg_n_0_[0]\,
      O => \Main.sensor_cnt[0]_i_1_n_0\
    );
\Main.sensor_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F40"
    )
        port map (
      I0 => state(3),
      I1 => \Main.sensor_cnt_reg_n_0_[0]\,
      I2 => sensor_cnt,
      I3 => \Main.sensor_cnt_reg_n_0_[1]\,
      O => \Main.sensor_cnt[1]_i_1_n_0\
    );
\Main.sensor_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF080000"
    )
        port map (
      I0 => \Main.sensor_cnt[1]_i_3_n_0\,
      I1 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I2 => TX_done_prev_reg_n_0,
      I3 => \Main.busy_cnt[0]_i_2_n_0\,
      I4 => i_TX_done,
      I5 => state(0),
      O => sensor_cnt
    );
\Main.sensor_cnt[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      O => \Main.sensor_cnt[1]_i_3_n_0\
    );
\Main.sensor_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sensor_cnt[0]_i_1_n_0\,
      Q => \Main.sensor_cnt_reg_n_0_[0]\
    );
\Main.sensor_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => \Main.sensor_cnt[1]_i_1_n_0\,
      Q => \Main.sensor_cnt_reg_n_0_[1]\
    );
TX_done_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => i_TX_done,
      I1 => \FSM_sequential_Main.mess_cnt_i_2_n_0\,
      I2 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I3 => TX_done_prev_reg_n_0,
      O => TX_done_prev_i_1_n_0
    );
TX_done_prev_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => TX_done_prev_i_1_n_0,
      PRE => o_i2c_ena_i_2_n_0,
      Q => TX_done_prev_reg_n_0
    );
\alt_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => o_i2c_rw_i_4_n_0,
      I1 => i_busy,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => alt_data(15)
    );
\alt_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => o_i2c_rw_i_4_n_0,
      I1 => i_busy,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => alt_data(23)
    );
\alt_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => o_i2c_rw_i_4_n_0,
      I1 => \Main.busy_cnt_reg_n_0_[2]\,
      I2 => \Main.busy_cnt_reg_n_0_[0]\,
      I3 => \Main.busy_cnt_reg_n_0_[1]\,
      I4 => i_busy,
      O => alt_data(7)
    );
\alt_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => \alt_data_reg_n_0_[0]\
    );
\alt_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => \alt_data_reg_n_0_[10]\
    );
\alt_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => \alt_data_reg_n_0_[11]\
    );
\alt_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => \alt_data_reg_n_0_[12]\
    );
\alt_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => \alt_data_reg_n_0_[13]\
    );
\alt_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => \alt_data_reg_n_0_[14]\
    );
\alt_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => \alt_data_reg_n_0_[15]\
    );
\alt_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => in16(0)
    );
\alt_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => in16(1)
    );
\alt_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => in16(2)
    );
\alt_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => in16(3)
    );
\alt_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => \alt_data_reg_n_0_[1]\
    );
\alt_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => in16(4)
    );
\alt_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => in16(5)
    );
\alt_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => in16(6)
    );
\alt_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => in16(7)
    );
\alt_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => \alt_data_reg_n_0_[2]\
    );
\alt_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => \alt_data_reg_n_0_[3]\
    );
\alt_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => \alt_data_reg_n_0_[4]\
    );
\alt_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => \alt_data_reg_n_0_[5]\
    );
\alt_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => \alt_data_reg_n_0_[6]\
    );
\alt_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => \alt_data_reg_n_0_[7]\
    );
\alt_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => \alt_data_reg_n_0_[8]\
    );
\alt_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => alt_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => \alt_data_reg_n_0_[9]\
    );
busy_prev_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => busy_cnt,
      CLR => o_i2c_ena_i_2_n_0,
      D => i_busy,
      Q => busy_prev_reg_n_0
    );
led2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFB000"
    )
        port map (
      I0 => \Main.sensor_cnt_reg_n_0_[1]\,
      I1 => \Main.sensor_cnt_reg_n_0_[0]\,
      I2 => \Main.sec_cnt[0]_i_1_n_0\,
      I3 => led2_i_2_n_0,
      I4 => \^led2\,
      O => led2_i_1_n_0
    );
led2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFCFCEC"
    )
        port map (
      I0 => led2_i_3_n_0,
      I1 => led2_i_4_n_0,
      I2 => led2_i_5_n_0,
      I3 => \Main.sec_cnt_reg\(19),
      I4 => \Main.sec_cnt_reg\(18),
      O => led2_i_2_n_0
    );
led2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(15),
      I1 => \Main.sec_cnt_reg\(16),
      I2 => \Main.sec_cnt_reg\(17),
      I3 => led2_i_6_n_0,
      I4 => led2_i_7_n_0,
      O => led2_i_3_n_0
    );
led2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(21),
      I1 => \Main.sec_cnt_reg\(22),
      I2 => \Main.sec_cnt_reg\(24),
      I3 => \Main.sec_cnt_reg\(23),
      I4 => \Main.sec_cnt_reg\(25),
      O => led2_i_4_n_0
    );
led2_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(25),
      I1 => \Main.sec_cnt_reg\(23),
      I2 => \Main.sec_cnt_reg\(24),
      I3 => \Main.sec_cnt_reg\(20),
      O => led2_i_5_n_0
    );
led2_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(14),
      I1 => \Main.sec_cnt_reg\(13),
      I2 => \Main.sec_cnt_reg\(12),
      I3 => \Main.sec_cnt_reg\(11),
      O => led2_i_6_n_0
    );
led2_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Main.sec_cnt_reg\(10),
      I1 => \Main.sec_cnt_reg\(9),
      I2 => \Main.sec_cnt_reg\(8),
      O => led2_i_7_n_0
    );
led2_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => led2_i_1_n_0,
      Q => \^led2\
    );
o_TX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAFFEAEAEA00"
    )
        port map (
      I0 => o_TX_DV_i_2_n_0,
      I1 => o_TX_DV_i_3_n_0,
      I2 => \state__0\(3),
      I3 => o_TX_DV_i_4_n_0,
      I4 => o_TX_DV_i_5_n_0,
      I5 => \^o_tx_dv\,
      O => o_TX_DV_i_1_n_0
    );
o_TX_DV_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => o_i2c_rw_i_2_n_0,
      I1 => \Main.busy_cnt[1]_i_4_n_0\,
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => o_TX_DV_i_6_n_0,
      O => o_TX_DV_i_2_n_0
    );
o_TX_DV_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => o_TX_DV_i_3_n_0
    );
o_TX_DV_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F5002200555577"
    )
        port map (
      I0 => state(0),
      I1 => \Main.busy_cnt[1]_i_3_n_0\,
      I2 => o_TX_DV_i_7_n_0,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => o_TX_DV_i_4_n_0
    );
o_TX_DV_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A00AE"
    )
        port map (
      I0 => \o_i2c_address[6]_i_4_n_0\,
      I1 => o_TX_DV_i_8_n_0,
      I2 => \Main.busy_cnt[1]_i_4_n_0\,
      I3 => o_TX_DV_i_3_n_0,
      I4 => o_i2c_rw_i_2_n_0,
      O => o_TX_DV_i_5_n_0
    );
o_TX_DV_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"071000000F300000"
    )
        port map (
      I0 => TX_done_prev_reg_n_0,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => i_TX_done,
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => o_TX_DV_i_6_n_0
    );
o_TX_DV_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59555577"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => \Main.busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \Main.busy_cnt_reg_n_0_[1]\,
      O => o_TX_DV_i_7_n_0
    );
o_TX_DV_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0075"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      O => o_TX_DV_i_8_n_0
    );
o_TX_DV_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => o_TX_DV_i_1_n_0,
      Q => \^o_tx_dv\
    );
\o_TX_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[0]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[0]\,
      I2 => \rtc_data_reg_n_0_[8]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[0]_i_3_n_0\,
      O => \o_TX_data[0]_i_1_n_0\
    );
\o_TX_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[0]\,
      I1 => \alt_data_reg_n_0_[8]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[0]_i_2_n_0\
    );
\o_TX_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[0]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(0),
      I5 => in16(0),
      O => \o_TX_data[0]_i_3_n_0\
    );
\o_TX_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(0),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[0]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[0]_i_4_n_0\
    );
\o_TX_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[1]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[1]\,
      I2 => \rtc_data_reg_n_0_[9]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[1]_i_3_n_0\,
      O => \o_TX_data[1]_i_1_n_0\
    );
\o_TX_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[1]\,
      I1 => \alt_data_reg_n_0_[9]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[1]_i_2_n_0\
    );
\o_TX_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[1]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(1),
      I5 => in16(1),
      O => \o_TX_data[1]_i_3_n_0\
    );
\o_TX_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(1),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[1]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[1]_i_4_n_0\
    );
\o_TX_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[2]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[2]\,
      I2 => \rtc_data_reg_n_0_[10]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[2]_i_3_n_0\,
      O => \o_TX_data[2]_i_1_n_0\
    );
\o_TX_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[2]\,
      I1 => \alt_data_reg_n_0_[10]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[2]_i_2_n_0\
    );
\o_TX_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[2]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(2),
      I5 => in16(2),
      O => \o_TX_data[2]_i_3_n_0\
    );
\o_TX_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(2),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[2]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[2]_i_4_n_0\
    );
\o_TX_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[3]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[3]\,
      I2 => \rtc_data_reg_n_0_[11]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[3]_i_3_n_0\,
      O => \o_TX_data[3]_i_1_n_0\
    );
\o_TX_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[3]\,
      I1 => \alt_data_reg_n_0_[11]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[3]_i_2_n_0\
    );
\o_TX_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[3]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(3),
      I5 => in16(3),
      O => \o_TX_data[3]_i_3_n_0\
    );
\o_TX_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(3),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[3]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[3]_i_4_n_0\
    );
\o_TX_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[4]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[4]\,
      I2 => \rtc_data_reg_n_0_[12]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[4]_i_3_n_0\,
      O => \o_TX_data[4]_i_1_n_0\
    );
\o_TX_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[4]\,
      I1 => \alt_data_reg_n_0_[12]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[4]_i_2_n_0\
    );
\o_TX_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[4]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(4),
      I5 => in16(4),
      O => \o_TX_data[4]_i_3_n_0\
    );
\o_TX_data[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(4),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[4]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[4]_i_4_n_0\
    );
\o_TX_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[5]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[5]\,
      I2 => \rtc_data_reg_n_0_[13]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[5]_i_3_n_0\,
      O => \o_TX_data[5]_i_1_n_0\
    );
\o_TX_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[5]\,
      I1 => \alt_data_reg_n_0_[13]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[5]_i_2_n_0\
    );
\o_TX_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[5]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(5),
      I5 => in16(5),
      O => \o_TX_data[5]_i_3_n_0\
    );
\o_TX_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(5),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[5]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[5]_i_4_n_0\
    );
\o_TX_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[6]_i_2_n_0\,
      I1 => \rtc_data_reg_n_0_[6]\,
      I2 => \rtc_data_reg_n_0_[14]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[6]_i_3_n_0\,
      O => \o_TX_data[6]_i_1_n_0\
    );
\o_TX_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[6]\,
      I1 => \alt_data_reg_n_0_[14]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[6]_i_2_n_0\
    );
\o_TX_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[6]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(6),
      I5 => in16(6),
      O => \o_TX_data[6]_i_3_n_0\
    );
\o_TX_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(6),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[6]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[6]_i_4_n_0\
    );
\o_TX_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => \o_TX_data[7]_i_3_n_0\,
      I1 => \o_TX_data[7]_i_4_n_0\,
      I2 => state(0),
      I3 => state(3),
      I4 => state(1),
      I5 => reset_n,
      O => o_TX_data0
    );
\o_TX_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAFAAA"
    )
        port map (
      I0 => \o_TX_data[7]_i_5_n_0\,
      I1 => \rtc_data_reg_n_0_[7]\,
      I2 => \rtc_data_reg_n_0_[15]\,
      I3 => state(3),
      I4 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      I5 => \o_TX_data[7]_i_6_n_0\,
      O => \o_TX_data[7]_i_2_n_0\
    );
\o_TX_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10100000FF100000"
    )
        port map (
      I0 => \Main.busy_cnt[2]_i_3_n_0\,
      I1 => i_busy,
      I2 => \state__0\(3),
      I3 => o_TX_DV_i_6_n_0,
      I4 => reset_n,
      I5 => state(0),
      O => \o_TX_data[7]_i_3_n_0\
    );
\o_TX_data[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => i_busy,
      I1 => \Main.busy_cnt_reg_n_0_[1]\,
      I2 => \Main.busy_cnt_reg_n_0_[0]\,
      I3 => \Main.busy_cnt_reg_n_0_[2]\,
      O => \o_TX_data[7]_i_4_n_0\
    );
\o_TX_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0000000C000"
    )
        port map (
      I0 => \alt_data_reg_n_0_[7]\,
      I1 => \alt_data_reg_n_0_[15]\,
      I2 => \o_TX_data[7]_i_7_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_Main.mess_cnt_reg_n_0\,
      O => \o_TX_data[7]_i_5_n_0\
    );
\o_TX_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEAAABAAAA"
    )
        port map (
      I0 => \o_TX_data[7]_i_8_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => in14(7),
      I5 => in16(7),
      O => \o_TX_data[7]_i_6_n_0\
    );
\o_TX_data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      O => \o_TX_data[7]_i_7_n_0\
    );
\o_TX_data[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => in18(7),
      I1 => state(0),
      I2 => \temp_data_reg_n_0_[7]\,
      I3 => state(3),
      I4 => state(1),
      I5 => state(2),
      O => \o_TX_data[7]_i_8_n_0\
    );
\o_TX_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[0]_i_1_n_0\,
      Q => o_TX_data(0),
      R => '0'
    );
\o_TX_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[1]_i_1_n_0\,
      Q => o_TX_data(1),
      R => '0'
    );
\o_TX_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[2]_i_1_n_0\,
      Q => o_TX_data(2),
      R => '0'
    );
\o_TX_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[3]_i_1_n_0\,
      Q => o_TX_data(3),
      R => '0'
    );
\o_TX_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[4]_i_1_n_0\,
      Q => o_TX_data(4),
      R => '0'
    );
\o_TX_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[5]_i_1_n_0\,
      Q => o_TX_data(5),
      R => '0'
    );
\o_TX_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[6]_i_1_n_0\,
      Q => o_TX_data(6),
      R => '0'
    );
\o_TX_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[7]_i_2_n_0\,
      Q => o_TX_data(7),
      R => '0'
    );
\o_i2c_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      O => \o_i2c_address[3]_i_1_n_0\
    );
\o_i2c_address[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      O => \o_i2c_address[4]_i_1_n_0\
    );
\o_i2c_address[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      O => \o_i2c_address[5]_i_1_n_0\
    );
\o_i2c_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888A0000"
    )
        port map (
      I0 => \o_i2c_address[6]_i_3_n_0\,
      I1 => \o_i2c_address[6]_i_4_n_0\,
      I2 => \o_i2c_address[6]_i_5_n_0\,
      I3 => state(3),
      I4 => reset_n,
      I5 => \o_i2c_address[6]_i_6_n_0\,
      O => o_i2c_address0
    );
\o_i2c_address[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      O => \o_i2c_address[6]_i_2_n_0\
    );
\o_i2c_address[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08001011"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => \Main.busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \Main.busy_cnt_reg_n_0_[1]\,
      O => \o_i2c_address[6]_i_3_n_0\
    );
\o_i2c_address[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      O => \o_i2c_address[6]_i_4_n_0\
    );
\o_i2c_address[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \o_i2c_address[6]_i_5_n_0\
    );
\o_i2c_address[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200008"
    )
        port map (
      I0 => \o_i2c_address[6]_i_7_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      O => \o_i2c_address[6]_i_6_n_0\
    );
\o_i2c_address[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000D00000000"
    )
        port map (
      I0 => i_busy,
      I1 => busy_prev_reg_n_0,
      I2 => \Main.busy_cnt_reg_n_0_[0]\,
      I3 => \Main.busy_cnt_reg_n_0_[2]\,
      I4 => \Main.busy_cnt_reg_n_0_[1]\,
      I5 => reset_n,
      O => \o_i2c_address[6]_i_7_n_0\
    );
\o_i2c_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_i2c_address0,
      D => \o_i2c_address[3]_i_1_n_0\,
      Q => o_i2c_address(0),
      R => '0'
    );
\o_i2c_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_i2c_address0,
      D => \o_i2c_address[4]_i_1_n_0\,
      Q => o_i2c_address(1),
      R => '0'
    );
\o_i2c_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_i2c_address0,
      D => \o_i2c_address[5]_i_1_n_0\,
      Q => o_i2c_address(2),
      R => '0'
    );
\o_i2c_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_i2c_address0,
      D => \o_i2c_address[6]_i_2_n_0\,
      Q => o_i2c_address(3),
      R => '0'
    );
\o_i2c_data_wr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => o_i2c_data_wr0,
      I4 => \^o_i2c_data_wr\(0),
      O => \o_i2c_data_wr[3]_i_1_n_0\
    );
\o_i2c_data_wr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => o_i2c_data_wr0,
      I3 => \^o_i2c_data_wr\(1),
      O => \o_i2c_data_wr[6]_i_1_n_0\
    );
\o_i2c_data_wr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => o_i2c_data_wr0,
      I4 => \^o_i2c_data_wr\(2),
      O => \o_i2c_data_wr[7]_i_1_n_0\
    );
\o_i2c_data_wr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88A80000"
    )
        port map (
      I0 => \o_i2c_address[6]_i_3_n_0\,
      I1 => \state__0\(3),
      I2 => \o_i2c_address[6]_i_4_n_0\,
      I3 => state(2),
      I4 => reset_n,
      I5 => \o_i2c_address[6]_i_6_n_0\,
      O => o_i2c_data_wr0
    );
\o_i2c_data_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_data_wr[3]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(0),
      R => '0'
    );
\o_i2c_data_wr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_data_wr[6]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(1),
      R => '0'
    );
\o_i2c_data_wr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_data_wr[7]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(2),
      R => '0'
    );
o_i2c_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABA8A8AAA8"
    )
        port map (
      I0 => o_i2c_ena_i_3_n_0,
      I1 => o_i2c_ena_i_4_n_0,
      I2 => o_i2c_ena_i_5_n_0,
      I3 => o_i2c_ena_i_6_n_0,
      I4 => o_i2c_ena_i_7_n_0,
      I5 => \^o_i2c_ena\,
      O => o_i2c_ena_i_1_n_0
    );
o_i2c_ena_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE7EEEEE"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => \Main.busy_cnt_reg_n_0_[1]\,
      I2 => i_busy,
      I3 => busy_prev_reg_n_0,
      I4 => \Main.busy_cnt_reg_n_0_[0]\,
      O => o_i2c_ena_i_10_n_0
    );
o_i2c_ena_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      O => o_i2c_ena_i_11_n_0
    );
o_i2c_ena_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => o_i2c_ena_i_2_n_0
    );
o_i2c_ena_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFAAAAEEEFEEEF"
    )
        port map (
      I0 => o_i2c_ena_i_8_n_0,
      I1 => \Main.busy_cnt[0]_i_2_n_0\,
      I2 => state(3),
      I3 => state(0),
      I4 => i_busy,
      I5 => o_i2c_rw_i_2_n_0,
      O => o_i2c_ena_i_3_n_0
    );
o_i2c_ena_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00000054"
    )
        port map (
      I0 => o_TX_DV_i_3_n_0,
      I1 => o_i2c_ena_i_9_n_0,
      I2 => \o_i2c_address[6]_i_4_n_0\,
      I3 => o_i2c_rw_i_2_n_0,
      I4 => \Main.busy_cnt[1]_i_4_n_0\,
      I5 => \state__0\(3),
      O => o_i2c_ena_i_4_n_0
    );
o_i2c_ena_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101011101010"
    )
        port map (
      I0 => i_busy,
      I1 => o_i2c_ena_i_10_n_0,
      I2 => o_i2c_ena_i_11_n_0,
      I3 => state(0),
      I4 => \Main.busy_cnt[0]_i_2_n_0\,
      I5 => \Main.busy_cnt[0]_i_3_n_0\,
      O => o_i2c_ena_i_5_n_0
    );
o_i2c_ena_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2282222222222222"
    )
        port map (
      I0 => \o_i2c_address[6]_i_4_n_0\,
      I1 => \Main.busy_cnt_reg_n_0_[2]\,
      I2 => \Main.busy_cnt_reg_n_0_[0]\,
      I3 => busy_prev_reg_n_0,
      I4 => i_busy,
      I5 => \Main.busy_cnt_reg_n_0_[1]\,
      O => o_i2c_ena_i_6_n_0
    );
o_i2c_ena_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DF7"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      O => o_i2c_ena_i_7_n_0
    );
o_i2c_ena_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000440F00000000"
    )
        port map (
      I0 => o_TX_DV_i_3_n_0,
      I1 => state(2),
      I2 => \Main.busy_cnt[1]_i_4_n_0\,
      I3 => state(1),
      I4 => state(3),
      I5 => state(0),
      O => o_i2c_ena_i_8_n_0
    );
o_i2c_ena_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0120"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => o_i2c_ena_i_9_n_0
    );
o_i2c_ena_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_i2c_ena_i_2_n_0,
      D => o_i2c_ena_i_1_n_0,
      Q => \^o_i2c_ena\
    );
o_i2c_rw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FFF8F8F800"
    )
        port map (
      I0 => o_i2c_rw_i_2_n_0,
      I1 => o_i2c_rw_i_3_n_0,
      I2 => o_i2c_rw_i_4_n_0,
      I3 => o_i2c_rw_i_5_n_0,
      I4 => o_i2c_rw_i_6_n_0,
      I5 => \^o_i2c_rw\,
      O => o_i2c_rw_i_1_n_0
    );
o_i2c_rw_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => i_busy,
      I1 => busy_prev_reg_n_0,
      I2 => \Main.busy_cnt_reg_n_0_[0]\,
      O => o_i2c_rw_i_2_n_0
    );
o_i2c_rw_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080C"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      O => o_i2c_rw_i_3_n_0
    );
o_i2c_rw_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      O => o_i2c_rw_i_4_n_0
    );
o_i2c_rw_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0023002200220022"
    )
        port map (
      I0 => o_i2c_rw_i_7_n_0,
      I1 => \Main.busy_cnt[1]_i_4_n_0\,
      I2 => o_i2c_rw_i_2_n_0,
      I3 => o_TX_DV_i_3_n_0,
      I4 => o_i2c_rw_i_4_n_0,
      I5 => reset_n,
      O => o_i2c_rw_i_5_n_0
    );
o_i2c_rw_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0400"
    )
        port map (
      I0 => state(1),
      I1 => \o_i2c_address[6]_i_7_n_0\,
      I2 => state(3),
      I3 => state(2),
      I4 => state(0),
      O => o_i2c_rw_i_6_n_0
    );
o_i2c_rw_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => reset_n,
      O => o_i2c_rw_i_7_n_0
    );
o_i2c_rw_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => o_i2c_rw_i_1_n_0,
      Q => \^o_i2c_rw\,
      R => '0'
    );
\rtc_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \Main.busy_cnt_reg_n_0_[2]\,
      I1 => \Main.busy_cnt_reg_n_0_[0]\,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => i_busy,
      I4 => \state__0\(3),
      O => rtc_data(15)
    );
\rtc_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \state__0\(3),
      I1 => i_busy,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => rtc_data(23)
    );
\rtc_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \Main.busy_cnt_reg_n_0_[1]\,
      I2 => i_busy,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => rtc_data(7)
    );
\rtc_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => \rtc_data_reg_n_0_[0]\
    );
\rtc_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => \rtc_data_reg_n_0_[10]\
    );
\rtc_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => \rtc_data_reg_n_0_[11]\
    );
\rtc_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => \rtc_data_reg_n_0_[12]\
    );
\rtc_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => \rtc_data_reg_n_0_[13]\
    );
\rtc_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => \rtc_data_reg_n_0_[14]\
    );
\rtc_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => \rtc_data_reg_n_0_[15]\
    );
\rtc_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => in18(0)
    );
\rtc_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => in18(1)
    );
\rtc_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => in18(2)
    );
\rtc_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => in18(3)
    );
\rtc_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => \rtc_data_reg_n_0_[1]\
    );
\rtc_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => in18(4)
    );
\rtc_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => in18(5)
    );
\rtc_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => in18(6)
    );
\rtc_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(23),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => in18(7)
    );
\rtc_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => \rtc_data_reg_n_0_[2]\
    );
\rtc_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => \rtc_data_reg_n_0_[3]\
    );
\rtc_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => \rtc_data_reg_n_0_[4]\
    );
\rtc_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => \rtc_data_reg_n_0_[5]\
    );
\rtc_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => \rtc_data_reg_n_0_[6]\
    );
\rtc_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => \rtc_data_reg_n_0_[7]\
    );
\rtc_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => \rtc_data_reg_n_0_[8]\
    );
\rtc_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => rtc_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => \rtc_data_reg_n_0_[9]\
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \temp_data[15]_i_2_n_0\,
      I1 => i_busy,
      I2 => \Main.busy_cnt_reg_n_0_[1]\,
      I3 => \Main.busy_cnt_reg_n_0_[0]\,
      I4 => \Main.busy_cnt_reg_n_0_[2]\,
      O => temp_data(15)
    );
\temp_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => \temp_data[15]_i_2_n_0\
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      I4 => \o_TX_data[7]_i_4_n_0\,
      O => temp_data(7)
    );
\temp_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => \temp_data_reg_n_0_[0]\
    );
\temp_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => in14(2)
    );
\temp_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => in14(3)
    );
\temp_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => in14(4)
    );
\temp_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => in14(5)
    );
\temp_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => in14(6)
    );
\temp_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => in14(7)
    );
\temp_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => \temp_data_reg_n_0_[1]\
    );
\temp_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(2),
      Q => \temp_data_reg_n_0_[2]\
    );
\temp_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(3),
      Q => \temp_data_reg_n_0_[3]\
    );
\temp_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(4),
      Q => \temp_data_reg_n_0_[4]\
    );
\temp_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(5),
      Q => \temp_data_reg_n_0_[5]\
    );
\temp_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(6),
      Q => \temp_data_reg_n_0_[6]\
    );
\temp_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(7),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(7),
      Q => \temp_data_reg_n_0_[7]\
    );
\temp_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(0),
      Q => in14(0)
    );
\temp_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => temp_data(15),
      CLR => o_i2c_ena_i_2_n_0,
      D => i_data_read(1),
      Q => in14(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 : entity is "I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0,Read_Sensorsmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 : entity is "Read_Sensorsmod,Vivado 2024.2";
end I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0;

architecture STRUCTURE of I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_i2c_address\ : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 6 downto 3 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  o_i2c_address(6 downto 5) <= \^o_i2c_address\(6 downto 5);
  o_i2c_address(4) <= \^o_i2c_address\(2);
  o_i2c_address(3 downto 2) <= \^o_i2c_address\(3 downto 2);
  o_i2c_address(1) <= \^o_i2c_address\(2);
  o_i2c_address(0) <= \<const0>\;
  o_i2c_data_wr(7) <= \^o_i2c_data_wr\(5);
  o_i2c_data_wr(6 downto 5) <= \^o_i2c_data_wr\(6 downto 5);
  o_i2c_data_wr(4) <= \<const0>\;
  o_i2c_data_wr(3) <= \^o_i2c_data_wr\(3);
  o_i2c_data_wr(2) <= \<const0>\;
  o_i2c_data_wr(1) <= \^o_i2c_data_wr\(5);
  o_i2c_data_wr(0) <= \^o_i2c_data_wr\(5);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0_Read_Sensorsmod
     port map (
      i_TX_done => i_TX_done,
      i_busy => i_busy,
      i_data_read(7 downto 0) => i_data_read(7 downto 0),
      led2 => led2,
      o_TX_DV => o_TX_DV,
      o_TX_data(7 downto 0) => o_TX_data(7 downto 0),
      o_i2c_address(3 downto 2) => \^o_i2c_address\(6 downto 5),
      o_i2c_address(1) => \^o_i2c_address\(2),
      o_i2c_address(0) => \^o_i2c_address\(3),
      o_i2c_data_wr(2) => \^o_i2c_data_wr\(5),
      o_i2c_data_wr(1) => \^o_i2c_data_wr\(6),
      o_i2c_data_wr(0) => \^o_i2c_data_wr\(3),
      o_i2c_ena => o_i2c_ena,
      o_i2c_rw => o_i2c_rw,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;
