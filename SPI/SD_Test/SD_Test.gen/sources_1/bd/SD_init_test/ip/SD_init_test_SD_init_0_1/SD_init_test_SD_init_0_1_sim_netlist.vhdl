-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Aug 12 19:06:26 2025
-- Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rjaco/Documents/Skolgrejs/FPGA_testing/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_init_test/ip/SD_init_test_SD_init_0_1/SD_init_test_SD_init_0_1_sim_netlist.vhdl
-- Design      : SD_init_test_SD_init_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_init_test_SD_init_0_1_SD_init is
  port (
    sck_i_reg_0 : out STD_LOGIC;
    cs : out STD_LOGIC;
    test_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi : out STD_LOGIC;
    test_DV : out STD_LOGIC;
    test_give_response : out STD_LOGIC;
    done : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SD_init_test_SD_init_0_1_SD_init : entity is "SD_init";
end SD_init_test_SD_init_0_1_SD_init;

architecture STRUCTURE of SD_init_test_SD_init_0_1_SD_init is
  signal CMD0_tries : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \CMD0_tries[0]_i_1_n_0\ : STD_LOGIC;
  signal \CMD0_tries[31]_i_3_n_0\ : STD_LOGIC;
  signal \CMD0_tries[31]_i_4_n_0\ : STD_LOGIC;
  signal CMD0_tries_0 : STD_LOGIC;
  signal \CMD0_tries_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \CMD0_tries_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \CMD0_tries_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \CMD0_tries_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[0]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[10]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[11]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[12]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[13]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[14]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[15]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[16]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[17]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[18]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[19]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[1]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[20]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[21]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[22]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[23]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[24]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[25]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[26]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[27]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[28]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[29]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[2]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[30]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[31]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[3]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[4]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[5]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[6]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[7]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[8]\ : STD_LOGIC;
  signal \CMD0_tries_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal byte_buf : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \byte_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[0]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_3_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \byte_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal clk_count : STD_LOGIC;
  signal \clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[2]\ : STD_LOGIC;
  signal cmd_bit_cnt : STD_LOGIC;
  signal \cmd_bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cmd_bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal cmd_byte_buf : STD_LOGIC;
  signal \cmd_byte_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[16]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[16]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[17]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[18]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[19]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[1]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[20]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[21]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[22]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[24]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[25]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[26]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[27]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[28]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[29]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[30]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[31]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[32]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[33]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[34]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[35]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[36]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[37]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[38]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[39]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[40]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[41]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[42]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[43]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[43]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[43]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[43]_i_4_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[44]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[45]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[46]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[47]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[4]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[4]_i_4_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_byte_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal cs_i : STD_LOGIC;
  signal cs_i_i_10_n_0 : STD_LOGIC;
  signal cs_i_i_11_n_0 : STD_LOGIC;
  signal cs_i_i_12_n_0 : STD_LOGIC;
  signal cs_i_i_13_n_0 : STD_LOGIC;
  signal cs_i_i_14_n_0 : STD_LOGIC;
  signal cs_i_i_15_n_0 : STD_LOGIC;
  signal cs_i_i_2_n_0 : STD_LOGIC;
  signal cs_i_i_3_n_0 : STD_LOGIC;
  signal cs_i_i_4_n_0 : STD_LOGIC;
  signal cs_i_i_5_n_0 : STD_LOGIC;
  signal cs_i_i_6_n_0 : STD_LOGIC;
  signal cs_i_i_7_n_0 : STD_LOGIC;
  signal cs_i_i_8_n_0 : STD_LOGIC;
  signal cs_i_i_9_n_0 : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_i_1_n_0 : STD_LOGIC;
  signal in14 : STD_LOGIC_VECTOR ( 47 downto 1 );
  signal in9 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal response_test_DV_i_i_1_n_0 : STD_LOGIC;
  signal response_test_byte_i : STD_LOGIC;
  signal response_test_byte_i0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \response_test_byte_i[7]_i_3_n_0\ : STD_LOGIC;
  signal sck_i_i_1_n_0 : STD_LOGIC;
  signal sck_i_i_2_n_0 : STD_LOGIC;
  signal \^sck_i_reg_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^test_dv\ : STD_LOGIC;
  signal \^test_give_response\ : STD_LOGIC;
  signal test_give_response1_out : STD_LOGIC;
  signal test_give_response_i_1_n_0 : STD_LOGIC;
  signal \NLW_CMD0_tries_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CMD0_tries_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CMD0_tries[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \CMD0_tries[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \CMD0_tries[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \CMD0_tries[12]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \CMD0_tries[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \CMD0_tries[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \CMD0_tries[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \CMD0_tries[16]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \CMD0_tries[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \CMD0_tries[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \CMD0_tries[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \CMD0_tries[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \CMD0_tries[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \CMD0_tries[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \CMD0_tries[23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \CMD0_tries[24]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \CMD0_tries[25]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \CMD0_tries[26]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CMD0_tries[27]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CMD0_tries[28]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \CMD0_tries[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \CMD0_tries[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \CMD0_tries[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \CMD0_tries[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \CMD0_tries[31]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \CMD0_tries[31]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \CMD0_tries[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \CMD0_tries[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \CMD0_tries[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \CMD0_tries[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \CMD0_tries[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \CMD0_tries[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \CMD0_tries[9]_i_1\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[31]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \CMD0_tries_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_13\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_14\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair28";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "s_cmd0_confirmation_clean:0100,s_cmd0_confirmation:0010,s_done:1011,s_cmd0_clean:0001,s_cmd59:1001,s_cmd59_confirmation:1010,s_acmd41_confirmation:1000,s_cmd0:0000,s_idle:1100,s_acmd41:0111,s_cmd55:0101,s_cmd55_confirmation:0110,s_cmd8_confirmation:0100,s_cmd8:0011";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \byte_buf[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_buf[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \byte_buf[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \byte_buf[6]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_buf[7]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \byte_buf[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_count[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[2]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[5]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[5]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmd_bit_cnt[5]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cmd_byte_buf[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmd_byte_buf[16]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cmd_byte_buf[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cmd_byte_buf[1]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cmd_byte_buf[43]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cmd_byte_buf[43]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmd_byte_buf[47]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cmd_byte_buf[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cmd_byte_buf[4]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of cs_i_i_10 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of cs_i_i_11 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of cs_i_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cs_i_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of cs_i_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of cs_i_i_6 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of cs_i_i_8 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of cs_i_i_9 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \response_test_byte_i[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \response_test_byte_i[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \response_test_byte_i[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \response_test_byte_i[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \response_test_byte_i[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \response_test_byte_i[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \response_test_byte_i[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \response_test_byte_i[7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \response_test_byte_i[7]_i_3\ : label is "soft_lutpair6";
begin
  done <= \^done\;
  mosi <= \^mosi\;
  sck_i_reg_0 <= \^sck_i_reg_0\;
  test_DV <= \^test_dv\;
  test_give_response <= \^test_give_response\;
\CMD0_tries[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[0]\,
      I1 => state(3),
      O => \CMD0_tries[0]_i_1_n_0\
    );
\CMD0_tries[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(10),
      I1 => state(3),
      O => CMD0_tries(10)
    );
\CMD0_tries[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(11),
      I1 => state(3),
      O => CMD0_tries(11)
    );
\CMD0_tries[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(12),
      I1 => state(3),
      O => CMD0_tries(12)
    );
\CMD0_tries[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(13),
      I1 => state(3),
      O => CMD0_tries(13)
    );
\CMD0_tries[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(14),
      I1 => state(3),
      O => CMD0_tries(14)
    );
\CMD0_tries[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(15),
      I1 => state(3),
      O => CMD0_tries(15)
    );
\CMD0_tries[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(16),
      I1 => state(3),
      O => CMD0_tries(16)
    );
\CMD0_tries[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(17),
      I1 => state(3),
      O => CMD0_tries(17)
    );
\CMD0_tries[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(18),
      I1 => state(3),
      O => CMD0_tries(18)
    );
\CMD0_tries[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(19),
      I1 => state(3),
      O => CMD0_tries(19)
    );
\CMD0_tries[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(1),
      I1 => state(3),
      O => CMD0_tries(1)
    );
\CMD0_tries[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(20),
      I1 => state(3),
      O => CMD0_tries(20)
    );
\CMD0_tries[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(21),
      I1 => state(3),
      O => CMD0_tries(21)
    );
\CMD0_tries[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(22),
      I1 => state(3),
      O => CMD0_tries(22)
    );
\CMD0_tries[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(23),
      I1 => state(3),
      O => CMD0_tries(23)
    );
\CMD0_tries[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(24),
      I1 => state(3),
      O => CMD0_tries(24)
    );
\CMD0_tries[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(25),
      I1 => state(3),
      O => CMD0_tries(25)
    );
\CMD0_tries[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(26),
      I1 => state(3),
      O => CMD0_tries(26)
    );
\CMD0_tries[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(27),
      I1 => state(3),
      O => CMD0_tries(27)
    );
\CMD0_tries[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(28),
      I1 => state(3),
      O => CMD0_tries(28)
    );
\CMD0_tries[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(29),
      I1 => state(3),
      O => CMD0_tries(29)
    );
\CMD0_tries[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(2),
      I1 => state(3),
      O => CMD0_tries(2)
    );
\CMD0_tries[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(30),
      I1 => state(3),
      O => CMD0_tries(30)
    );
\CMD0_tries[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \CMD0_tries[31]_i_3_n_0\,
      I1 => cs_i_i_5_n_0,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \CMD0_tries[31]_i_4_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      O => CMD0_tries_0
    );
\CMD0_tries[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(31),
      I1 => state(3),
      O => CMD0_tries(31)
    );
\CMD0_tries[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => \CMD0_tries[31]_i_3_n_0\
    );
\CMD0_tries[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => \CMD0_tries[31]_i_4_n_0\
    );
\CMD0_tries[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(3),
      I1 => state(3),
      O => CMD0_tries(3)
    );
\CMD0_tries[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(4),
      I1 => state(3),
      O => CMD0_tries(4)
    );
\CMD0_tries[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(5),
      I1 => state(3),
      O => CMD0_tries(5)
    );
\CMD0_tries[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(6),
      I1 => state(3),
      O => CMD0_tries(6)
    );
\CMD0_tries[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(7),
      I1 => state(3),
      O => CMD0_tries(7)
    );
\CMD0_tries[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(8),
      I1 => state(3),
      O => CMD0_tries(8)
    );
\CMD0_tries[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(9),
      I1 => state(3),
      O => CMD0_tries(9)
    );
\CMD0_tries_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => \CMD0_tries[0]_i_1_n_0\,
      Q => \CMD0_tries_reg_n_0_[0]\,
      R => rst
    );
\CMD0_tries_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(10),
      Q => \CMD0_tries_reg_n_0_[10]\,
      R => rst
    );
\CMD0_tries_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(11),
      Q => \CMD0_tries_reg_n_0_[11]\,
      R => rst
    );
\CMD0_tries_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(12),
      Q => \CMD0_tries_reg_n_0_[12]\,
      R => rst
    );
\CMD0_tries_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[8]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[12]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[12]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[12]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(12 downto 9),
      S(3) => \CMD0_tries_reg_n_0_[12]\,
      S(2) => \CMD0_tries_reg_n_0_[11]\,
      S(1) => \CMD0_tries_reg_n_0_[10]\,
      S(0) => \CMD0_tries_reg_n_0_[9]\
    );
\CMD0_tries_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(13),
      Q => \CMD0_tries_reg_n_0_[13]\,
      R => rst
    );
\CMD0_tries_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(14),
      Q => \CMD0_tries_reg_n_0_[14]\,
      R => rst
    );
\CMD0_tries_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(15),
      Q => \CMD0_tries_reg_n_0_[15]\,
      R => rst
    );
\CMD0_tries_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(16),
      Q => \CMD0_tries_reg_n_0_[16]\,
      R => rst
    );
\CMD0_tries_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[12]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[16]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[16]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[16]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(16 downto 13),
      S(3) => \CMD0_tries_reg_n_0_[16]\,
      S(2) => \CMD0_tries_reg_n_0_[15]\,
      S(1) => \CMD0_tries_reg_n_0_[14]\,
      S(0) => \CMD0_tries_reg_n_0_[13]\
    );
\CMD0_tries_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(17),
      Q => \CMD0_tries_reg_n_0_[17]\,
      R => rst
    );
\CMD0_tries_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(18),
      Q => \CMD0_tries_reg_n_0_[18]\,
      R => rst
    );
\CMD0_tries_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(19),
      Q => \CMD0_tries_reg_n_0_[19]\,
      R => rst
    );
\CMD0_tries_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(1),
      Q => \CMD0_tries_reg_n_0_[1]\,
      R => rst
    );
\CMD0_tries_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(20),
      Q => \CMD0_tries_reg_n_0_[20]\,
      R => rst
    );
\CMD0_tries_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[16]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[20]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[20]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[20]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(20 downto 17),
      S(3) => \CMD0_tries_reg_n_0_[20]\,
      S(2) => \CMD0_tries_reg_n_0_[19]\,
      S(1) => \CMD0_tries_reg_n_0_[18]\,
      S(0) => \CMD0_tries_reg_n_0_[17]\
    );
\CMD0_tries_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(21),
      Q => \CMD0_tries_reg_n_0_[21]\,
      R => rst
    );
\CMD0_tries_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(22),
      Q => \CMD0_tries_reg_n_0_[22]\,
      R => rst
    );
\CMD0_tries_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(23),
      Q => \CMD0_tries_reg_n_0_[23]\,
      R => rst
    );
\CMD0_tries_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(24),
      Q => \CMD0_tries_reg_n_0_[24]\,
      R => rst
    );
\CMD0_tries_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[20]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[24]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[24]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[24]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(24 downto 21),
      S(3) => \CMD0_tries_reg_n_0_[24]\,
      S(2) => \CMD0_tries_reg_n_0_[23]\,
      S(1) => \CMD0_tries_reg_n_0_[22]\,
      S(0) => \CMD0_tries_reg_n_0_[21]\
    );
\CMD0_tries_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(25),
      Q => \CMD0_tries_reg_n_0_[25]\,
      R => rst
    );
\CMD0_tries_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(26),
      Q => \CMD0_tries_reg_n_0_[26]\,
      R => rst
    );
\CMD0_tries_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(27),
      Q => \CMD0_tries_reg_n_0_[27]\,
      R => rst
    );
\CMD0_tries_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(28),
      Q => \CMD0_tries_reg_n_0_[28]\,
      R => rst
    );
\CMD0_tries_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[24]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[28]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[28]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[28]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(28 downto 25),
      S(3) => \CMD0_tries_reg_n_0_[28]\,
      S(2) => \CMD0_tries_reg_n_0_[27]\,
      S(1) => \CMD0_tries_reg_n_0_[26]\,
      S(0) => \CMD0_tries_reg_n_0_[25]\
    );
\CMD0_tries_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(29),
      Q => \CMD0_tries_reg_n_0_[29]\,
      R => rst
    );
\CMD0_tries_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(2),
      Q => \CMD0_tries_reg_n_0_[2]\,
      R => rst
    );
\CMD0_tries_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(30),
      Q => \CMD0_tries_reg_n_0_[30]\,
      R => rst
    );
\CMD0_tries_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(31),
      Q => \CMD0_tries_reg_n_0_[31]\,
      R => rst
    );
\CMD0_tries_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_CMD0_tries_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CMD0_tries_reg[31]_i_5_n_2\,
      CO(0) => \CMD0_tries_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_CMD0_tries_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(31 downto 29),
      S(3) => '0',
      S(2) => \CMD0_tries_reg_n_0_[31]\,
      S(1) => \CMD0_tries_reg_n_0_[30]\,
      S(0) => \CMD0_tries_reg_n_0_[29]\
    );
\CMD0_tries_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(3),
      Q => \CMD0_tries_reg_n_0_[3]\,
      R => rst
    );
\CMD0_tries_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(4),
      Q => \CMD0_tries_reg_n_0_[4]\,
      R => rst
    );
\CMD0_tries_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CMD0_tries_reg[4]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[4]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[4]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[4]_i_2_n_3\,
      CYINIT => \CMD0_tries_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3) => \CMD0_tries_reg_n_0_[4]\,
      S(2) => \CMD0_tries_reg_n_0_[3]\,
      S(1) => \CMD0_tries_reg_n_0_[2]\,
      S(0) => \CMD0_tries_reg_n_0_[1]\
    );
\CMD0_tries_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(5),
      Q => \CMD0_tries_reg_n_0_[5]\,
      R => rst
    );
\CMD0_tries_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(6),
      Q => \CMD0_tries_reg_n_0_[6]\,
      R => rst
    );
\CMD0_tries_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(7),
      Q => \CMD0_tries_reg_n_0_[7]\,
      R => rst
    );
\CMD0_tries_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(8),
      Q => \CMD0_tries_reg_n_0_[8]\,
      R => rst
    );
\CMD0_tries_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMD0_tries_reg[4]_i_2_n_0\,
      CO(3) => \CMD0_tries_reg[8]_i_2_n_0\,
      CO(2) => \CMD0_tries_reg[8]_i_2_n_1\,
      CO(1) => \CMD0_tries_reg[8]_i_2_n_2\,
      CO(0) => \CMD0_tries_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \CMD0_tries_reg_n_0_[8]\,
      S(2) => \CMD0_tries_reg_n_0_[7]\,
      S(1) => \CMD0_tries_reg_n_0_[6]\,
      S(0) => \CMD0_tries_reg_n_0_[5]\
    );
\CMD0_tries_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => CMD0_tries_0,
      D => CMD0_tries(9),
      Q => \CMD0_tries_reg_n_0_[9]\,
      R => rst
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF150000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_state[0]_i_3_n_0\,
      I5 => \FSM_sequential_state[0]_i_4_n_0\,
      O => \state__0\(0)
    );
\FSM_sequential_state[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22A80000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_10_n_0\
    );
\FSM_sequential_state[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[17]\,
      I1 => \CMD0_tries_reg_n_0_[16]\,
      I2 => \CMD0_tries_reg_n_0_[19]\,
      I3 => \CMD0_tries_reg_n_0_[18]\,
      O => \FSM_sequential_state[0]_i_11_n_0\
    );
\FSM_sequential_state[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[25]\,
      I1 => \CMD0_tries_reg_n_0_[24]\,
      I2 => \CMD0_tries_reg_n_0_[27]\,
      I3 => \CMD0_tries_reg_n_0_[26]\,
      O => \FSM_sequential_state[0]_i_12_n_0\
    );
\FSM_sequential_state[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[1]\,
      I1 => \CMD0_tries_reg_n_0_[0]\,
      I2 => \CMD0_tries_reg_n_0_[2]\,
      I3 => \CMD0_tries_reg_n_0_[3]\,
      O => \FSM_sequential_state[0]_i_13_n_0\
    );
\FSM_sequential_state[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[9]\,
      I1 => \CMD0_tries_reg_n_0_[8]\,
      I2 => \CMD0_tries_reg_n_0_[11]\,
      I3 => \CMD0_tries_reg_n_0_[10]\,
      O => \FSM_sequential_state[0]_i_14_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \byte_buf_reg_n_0_[2]\,
      I1 => \byte_buf_reg_n_0_[3]\,
      I2 => \byte_buf_reg_n_0_[1]\,
      I3 => \byte_buf_reg_n_0_[0]\,
      I4 => \FSM_sequential_state[0]_i_5_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF222A"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_6_n_0\,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_7_n_0\,
      I3 => \FSM_sequential_state[0]_i_8_n_0\,
      I4 => \FSM_sequential_state[0]_i_9_n_0\,
      I5 => \FSM_sequential_state[0]_i_10_n_0\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \byte_buf_reg_n_0_[5]\,
      I1 => \byte_buf_reg_n_0_[4]\,
      I2 => \byte_buf_reg_n_0_[7]\,
      I3 => \byte_buf_reg_n_0_[6]\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => state(1),
      I4 => state(3),
      I5 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_i_i_15_n_0,
      I1 => \FSM_sequential_state[0]_i_11_n_0\,
      I2 => cs_i_i_14_n_0,
      I3 => \FSM_sequential_state[0]_i_12_n_0\,
      O => \FSM_sequential_state[0]_i_7_n_0\
    );
\FSM_sequential_state[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_i_i_13_n_0,
      I1 => \FSM_sequential_state[0]_i_13_n_0\,
      I2 => cs_i_i_12_n_0,
      I3 => \FSM_sequential_state[0]_i_14_n_0\,
      O => \FSM_sequential_state[0]_i_8_n_0\
    );
\FSM_sequential_state[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_9_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEF2F2FEFFF2F2"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => cs_i_i_4_n_0,
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30001F00"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => \FSM_sequential_state[3]_i_4_n_0\,
      I3 => state(0),
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_i_i_8_n_0,
      I1 => cs_i_i_9_n_0,
      I2 => cs_i_i_10_n_0,
      I3 => cs_i_i_11_n_0,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF003333A5F0F0C0"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => state(3),
      O => \state__0\(2)
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F41414001414F1"
    )
        port map (
      I0 => sck_i_i_2_n_0,
      I1 => \^sck_i_reg_0\,
      I2 => state(0),
      I3 => state(2),
      I4 => state(3),
      I5 => state(1),
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAA8888AAAA8888"
    )
        port map (
      I0 => state(3),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      I2 => \FSM_sequential_state[3]_i_4_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cmd_bit_cnt_reg_n_0_[4]\,
      I1 => \cmd_bit_cnt_reg_n_0_[2]\,
      I2 => \cmd_bit_cnt_reg_n_0_[0]\,
      I3 => \cmd_bit_cnt_reg_n_0_[1]\,
      I4 => \cmd_bit_cnt_reg_n_0_[3]\,
      I5 => \cmd_bit_cnt_reg_n_0_[5]\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(0),
      Q => state(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(1),
      Q => state(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(2),
      Q => state(2),
      R => rst
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(3),
      Q => state(3),
      R => rst
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222BFFFF373F0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => bit_cnt,
      I5 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFBA00"
    )
        port map (
      I0 => \bit_cnt[2]_i_2_n_0\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt[2]_i_3_n_0\,
      I3 => bit_cnt,
      I4 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAFFFFAAAE0000"
    )
        port map (
      I0 => \bit_cnt[2]_i_2_n_0\,
      I1 => \bit_cnt[2]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => bit_cnt,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3C2AEB0C002AE8"
    )
        port map (
      I0 => \bit_cnt[2]_i_5_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \response_test_byte_i[7]_i_3_n_0\,
      O => bit_cnt
    );
\bit_cnt[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^sck_i_reg_0\,
      I1 => \clk_count_reg_n_0_[2]\,
      I2 => \clk_count_reg_n_0_[0]\,
      I3 => \clk_count_reg_n_0_[1]\,
      O => \bit_cnt[2]_i_5_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => rst
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => rst
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => rst
    );
\byte_buf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[0]_i_2_n_0\,
      I2 => \byte_buf[6]_i_2_n_0\,
      I3 => cs_i_i_2_n_0,
      I4 => \byte_buf_reg_n_0_[0]\,
      O => \byte_buf[0]_i_1_n_0\
    );
\byte_buf[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      O => \byte_buf[0]_i_2_n_0\
    );
\byte_buf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[7]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[1]\,
      O => \byte_buf[1]_i_1_n_0\
    );
\byte_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[6]_i_2_n_0\,
      I2 => \byte_buf[2]_i_2_n_0\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[2]\,
      O => \byte_buf[2]_i_1_n_0\
    );
\byte_buf[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      O => \byte_buf[2]_i_2_n_0\
    );
\byte_buf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[7]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[3]\,
      O => \byte_buf[3]_i_1_n_0\
    );
\byte_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[6]_i_2_n_0\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \byte_buf[4]_i_2_n_0\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[4]\,
      O => \byte_buf[4]_i_1_n_0\
    );
\byte_buf[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      O => \byte_buf[4]_i_2_n_0\
    );
\byte_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[7]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[5]\,
      O => \byte_buf[5]_i_1_n_0\
    );
\byte_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[6]_i_2_n_0\,
      I2 => \byte_buf[6]_i_3_n_0\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[6]\,
      O => \byte_buf[6]_i_1_n_0\
    );
\byte_buf[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D4"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => \byte_buf[6]_i_2_n_0\
    );
\byte_buf[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      O => \byte_buf[6]_i_3_n_0\
    );
\byte_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => byte_buf(1),
      I1 => \byte_buf[7]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => cs_i_i_2_n_0,
      I5 => \byte_buf_reg_n_0_[7]\,
      O => \byte_buf[7]_i_1_n_0\
    );
\byte_buf[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => miso,
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      O => byte_buf(1)
    );
\byte_buf[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407E0000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => \bit_cnt_reg_n_0_[0]\,
      O => \byte_buf[7]_i_3_n_0\
    );
\byte_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[0]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[0]\,
      R => rst
    );
\byte_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[1]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[1]\,
      R => rst
    );
\byte_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[2]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[2]\,
      R => rst
    );
\byte_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[3]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[3]\,
      R => rst
    );
\byte_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[4]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[4]\,
      R => rst
    );
\byte_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[5]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[5]\,
      R => rst
    );
\byte_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[6]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[6]\,
      R => rst
    );
\byte_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[7]_i_1_n_0\,
      Q => \byte_buf_reg_n_0_[7]\,
      R => rst
    );
\clk_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C882337D"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => \clk_count_reg_n_0_[0]\,
      O => \clk_count[0]_i_1_n_0\
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5C5D55D0A0A2AA2"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      I5 => \clk_count_reg_n_0_[1]\,
      O => \clk_count[1]_i_1_n_0\
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777FFFF70000000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => \clk_count_reg_n_0_[1]\,
      I3 => \clk_count_reg_n_0_[0]\,
      I4 => clk_count,
      I5 => \clk_count_reg_n_0_[2]\,
      O => \clk_count[2]_i_1_n_0\
    );
\clk_count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"377D"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => clk_count
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count[0]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[0]\,
      R => rst
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count[1]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[1]\,
      R => rst
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_count[2]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[2]\,
      R => rst
    );
\cmd_bit_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002A9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \cmd_bit_cnt_reg_n_0_[0]\,
      O => \cmd_bit_cnt[0]_i_1_n_0\
    );
\cmd_bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000560156010000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \cmd_bit_cnt_reg_n_0_[0]\,
      I5 => \cmd_bit_cnt_reg_n_0_[1]\,
      O => \cmd_bit_cnt[1]_i_1_n_0\
    );
\cmd_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0061616161000000"
    )
        port map (
      I0 => state(3),
      I1 => \cmd_bit_cnt[2]_i_2_n_0\,
      I2 => state(0),
      I3 => \cmd_bit_cnt_reg_n_0_[1]\,
      I4 => \cmd_bit_cnt_reg_n_0_[0]\,
      I5 => \cmd_bit_cnt_reg_n_0_[2]\,
      O => \cmd_bit_cnt[2]_i_1_n_0\
    );
\cmd_bit_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \cmd_bit_cnt[2]_i_2_n_0\
    );
\cmd_bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cmd_bit_cnt[5]_i_5_n_0\,
      I1 => \cmd_bit_cnt_reg_n_0_[2]\,
      I2 => \cmd_bit_cnt_reg_n_0_[0]\,
      I3 => \cmd_bit_cnt_reg_n_0_[1]\,
      I4 => \cmd_bit_cnt_reg_n_0_[3]\,
      O => \cmd_bit_cnt[3]_i_1_n_0\
    );
\cmd_bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00E000E"
    )
        port map (
      I0 => \cmd_bit_cnt[5]_i_6_n_0\,
      I1 => \cmd_bit_cnt[4]_i_2_n_0\,
      I2 => \cmd_bit_cnt_reg_n_0_[4]\,
      I3 => \cmd_bit_cnt[5]_i_4_n_0\,
      I4 => \cmd_bit_cnt[5]_i_5_n_0\,
      O => \cmd_bit_cnt[4]_i_1_n_0\
    );
\cmd_bit_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000809"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => \cmd_bit_cnt_reg_n_0_[5]\,
      O => \cmd_bit_cnt[4]_i_2_n_0\
    );
\cmd_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBB3BBE0C88388E"
    )
        port map (
      I0 => \cmd_bit_cnt[5]_i_3_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => cs_i_i_5_n_0,
      O => cmd_bit_cnt
    );
\cmd_bit_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8844F800"
    )
        port map (
      I0 => \cmd_bit_cnt[5]_i_4_n_0\,
      I1 => \cmd_bit_cnt[5]_i_5_n_0\,
      I2 => \cmd_bit_cnt[5]_i_6_n_0\,
      I3 => \cmd_bit_cnt_reg_n_0_[5]\,
      I4 => \cmd_bit_cnt_reg_n_0_[4]\,
      O => \cmd_bit_cnt[5]_i_2_n_0\
    );
\cmd_bit_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \clk_count_reg_n_0_[2]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[1]\,
      I3 => \^sck_i_reg_0\,
      O => \cmd_bit_cnt[5]_i_3_n_0\
    );
\cmd_bit_cnt[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cmd_bit_cnt_reg_n_0_[2]\,
      I1 => \cmd_bit_cnt_reg_n_0_[0]\,
      I2 => \cmd_bit_cnt_reg_n_0_[1]\,
      I3 => \cmd_bit_cnt_reg_n_0_[3]\,
      O => \cmd_bit_cnt[5]_i_4_n_0\
    );
\cmd_bit_cnt[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5601"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \cmd_bit_cnt[5]_i_5_n_0\
    );
\cmd_bit_cnt[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4048"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \cmd_bit_cnt[5]_i_6_n_0\
    );
\cmd_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[0]_i_1_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[0]\,
      R => rst
    );
\cmd_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[1]_i_1_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[1]\,
      R => rst
    );
\cmd_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[2]_i_1_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[2]\,
      R => rst
    );
\cmd_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[3]_i_1_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[3]\,
      R => rst
    );
\cmd_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[4]_i_1_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[4]\,
      R => rst
    );
\cmd_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_bit_cnt,
      D => \cmd_bit_cnt[5]_i_2_n_0\,
      Q => \cmd_bit_cnt_reg_n_0_[5]\,
      R => rst
    );
\cmd_byte_buf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A08B00FC"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => state(3),
      O => \cmd_byte_buf[0]_i_1_n_0\
    );
\cmd_byte_buf[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(10),
      O => \cmd_byte_buf[10]_i_1_n_0\
    );
\cmd_byte_buf[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF888F888"
    )
        port map (
      I0 => in14(11),
      I1 => \cmd_byte_buf[16]_i_2_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \CMD0_tries[31]_i_4_n_0\,
      O => \cmd_byte_buf[11]_i_1_n_0\
    );
\cmd_byte_buf[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(12),
      O => \cmd_byte_buf[12]_i_1_n_0\
    );
\cmd_byte_buf[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF888F888"
    )
        port map (
      I0 => in14(13),
      I1 => \cmd_byte_buf[16]_i_2_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \CMD0_tries[31]_i_4_n_0\,
      O => \cmd_byte_buf[13]_i_1_n_0\
    );
\cmd_byte_buf[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(14),
      O => \cmd_byte_buf[14]_i_1_n_0\
    );
\cmd_byte_buf[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF888F888"
    )
        port map (
      I0 => in14(15),
      I1 => \cmd_byte_buf[16]_i_2_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \CMD0_tries[31]_i_4_n_0\,
      O => \cmd_byte_buf[15]_i_1_n_0\
    );
\cmd_byte_buf[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF888F888"
    )
        port map (
      I0 => in14(16),
      I1 => \cmd_byte_buf[16]_i_2_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \CMD0_tries[31]_i_4_n_0\,
      O => \cmd_byte_buf[16]_i_1_n_0\
    );
\cmd_byte_buf[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57115705"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[16]_i_2_n_0\
    );
\cmd_byte_buf[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(17),
      O => \cmd_byte_buf[17]_i_1_n_0\
    );
\cmd_byte_buf[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(18),
      O => \cmd_byte_buf[18]_i_1_n_0\
    );
\cmd_byte_buf[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(19),
      O => \cmd_byte_buf[19]_i_1_n_0\
    );
\cmd_byte_buf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFF4FFF4"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \CMD0_tries[31]_i_4_n_0\,
      I2 => \cmd_byte_buf[1]_i_2_n_0\,
      I3 => \cmd_byte_buf[1]_i_3_n_0\,
      I4 => in14(1),
      I5 => \cmd_byte_buf[16]_i_2_n_0\,
      O => \cmd_byte_buf[1]_i_1_n_0\
    );
\cmd_byte_buf[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      O => \cmd_byte_buf[1]_i_2_n_0\
    );
\cmd_byte_buf[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[1]_i_3_n_0\
    );
\cmd_byte_buf[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(20),
      O => \cmd_byte_buf[20]_i_1_n_0\
    );
\cmd_byte_buf[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(21),
      O => \cmd_byte_buf[21]_i_1_n_0\
    );
\cmd_byte_buf[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(22),
      O => \cmd_byte_buf[22]_i_1_n_0\
    );
\cmd_byte_buf[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(23),
      O => \cmd_byte_buf[23]_i_1_n_0\
    );
\cmd_byte_buf[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(24),
      O => \cmd_byte_buf[24]_i_1_n_0\
    );
\cmd_byte_buf[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(25),
      O => \cmd_byte_buf[25]_i_1_n_0\
    );
\cmd_byte_buf[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(26),
      O => \cmd_byte_buf[26]_i_1_n_0\
    );
\cmd_byte_buf[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(27),
      O => \cmd_byte_buf[27]_i_1_n_0\
    );
\cmd_byte_buf[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(28),
      O => \cmd_byte_buf[28]_i_1_n_0\
    );
\cmd_byte_buf[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(29),
      O => \cmd_byte_buf[29]_i_1_n_0\
    );
\cmd_byte_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB30BBB833F0B8"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(3),
      I2 => in14(2),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \cmd_byte_buf[2]_i_1_n_0\
    );
\cmd_byte_buf[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(30),
      O => \cmd_byte_buf[30]_i_1_n_0\
    );
\cmd_byte_buf[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(31),
      O => \cmd_byte_buf[31]_i_1_n_0\
    );
\cmd_byte_buf[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(32),
      O => \cmd_byte_buf[32]_i_1_n_0\
    );
\cmd_byte_buf[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(33),
      O => \cmd_byte_buf[33]_i_1_n_0\
    );
\cmd_byte_buf[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(34),
      O => \cmd_byte_buf[34]_i_1_n_0\
    );
\cmd_byte_buf[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(35),
      O => \cmd_byte_buf[35]_i_1_n_0\
    );
\cmd_byte_buf[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(36),
      O => \cmd_byte_buf[36]_i_1_n_0\
    );
\cmd_byte_buf[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(37),
      O => \cmd_byte_buf[37]_i_1_n_0\
    );
\cmd_byte_buf[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A002A020A0C2A02"
    )
        port map (
      I0 => in14(38),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[38]_i_1_n_0\
    );
\cmd_byte_buf[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(39),
      O => \cmd_byte_buf[39]_i_1_n_0\
    );
\cmd_byte_buf[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(3),
      O => \cmd_byte_buf[3]_i_1_n_0\
    );
\cmd_byte_buf[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0AAAAAC0CFF30A"
    )
        port map (
      I0 => in14(40),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(0),
      O => \cmd_byte_buf[40]_i_1_n_0\
    );
\cmd_byte_buf[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0AAAAAC0CFC30A"
    )
        port map (
      I0 => in14(41),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(0),
      O => \cmd_byte_buf[41]_i_1_n_0\
    );
\cmd_byte_buf[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2AF0CE222A0302"
    )
        port map (
      I0 => in14(42),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[42]_i_1_n_0\
    );
\cmd_byte_buf[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \CMD0_tries[31]_i_4_n_0\,
      I2 => state(3),
      I3 => \cmd_byte_buf[43]_i_2_n_0\,
      I4 => \cmd_byte_buf[43]_i_3_n_0\,
      I5 => \cmd_byte_buf[43]_i_4_n_0\,
      O => \cmd_byte_buf[43]_i_1_n_0\
    );
\cmd_byte_buf[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[43]_i_2_n_0\
    );
\cmd_byte_buf[43]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000204"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      O => \cmd_byte_buf[43]_i_3_n_0\
    );
\cmd_byte_buf[43]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DCCEF00000000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => in14(43),
      O => \cmd_byte_buf[43]_i_4_n_0\
    );
\cmd_byte_buf[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0AAAAAC0CFC30A"
    )
        port map (
      I0 => in14(44),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(0),
      O => \cmd_byte_buf[44]_i_1_n_0\
    );
\cmd_byte_buf[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0AAAAAC0CFF30A"
    )
        port map (
      I0 => in14(45),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(0),
      O => \cmd_byte_buf[45]_i_1_n_0\
    );
\cmd_byte_buf[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2288F3F3F3F3F0"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(0),
      I2 => in14(46),
      I3 => state(2),
      I4 => state(1),
      I5 => state(3),
      O => \cmd_byte_buf[46]_i_1_n_0\
    );
\cmd_byte_buf[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBB3BB20C883882"
    )
        port map (
      I0 => \cmd_bit_cnt[5]_i_3_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => cs_i_i_5_n_0,
      O => cmd_byte_buf
    );
\cmd_byte_buf[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(47),
      O => \cmd_byte_buf[47]_i_2_n_0\
    );
\cmd_byte_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFEFEFCFCFEFE"
    )
        port map (
      I0 => \cmd_byte_buf[4]_i_2_n_0\,
      I1 => \cmd_byte_buf[4]_i_3_n_0\,
      I2 => \cmd_byte_buf[4]_i_4_n_0\,
      I3 => \CMD0_tries[31]_i_4_n_0\,
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \cmd_byte_buf[4]_i_1_n_0\
    );
\cmd_byte_buf[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \cmd_byte_buf[4]_i_2_n_0\
    );
\cmd_byte_buf[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(4),
      O => \cmd_byte_buf[4]_i_3_n_0\
    );
\cmd_byte_buf[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => state(2),
      O => \cmd_byte_buf[4]_i_4_n_0\
    );
\cmd_byte_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAC00ACE3A220AE"
    )
        port map (
      I0 => in14(5),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => state(1),
      O => \cmd_byte_buf[5]_i_1_n_0\
    );
\cmd_byte_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAC00ACE3A220AE"
    )
        port map (
      I0 => in14(6),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => state(1),
      O => \cmd_byte_buf[6]_i_1_n_0\
    );
\cmd_byte_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A0332222A003E"
    )
        port map (
      I0 => in14(7),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \cmd_byte_buf[7]_i_1_n_0\
    );
\cmd_byte_buf[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B0000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => in14(8),
      O => \cmd_byte_buf[8]_i_1_n_0\
    );
\cmd_byte_buf[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF888F888"
    )
        port map (
      I0 => in14(9),
      I1 => \cmd_byte_buf[16]_i_2_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \CMD0_tries[31]_i_4_n_0\,
      O => \cmd_byte_buf[9]_i_1_n_0\
    );
\cmd_byte_buf_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[0]_i_1_n_0\,
      Q => in14(1),
      S => rst
    );
\cmd_byte_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[10]_i_1_n_0\,
      Q => in14(11),
      R => rst
    );
\cmd_byte_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[11]_i_1_n_0\,
      Q => in14(12),
      R => rst
    );
\cmd_byte_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[12]_i_1_n_0\,
      Q => in14(13),
      R => rst
    );
\cmd_byte_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[13]_i_1_n_0\,
      Q => in14(14),
      R => rst
    );
\cmd_byte_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[14]_i_1_n_0\,
      Q => in14(15),
      R => rst
    );
\cmd_byte_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[15]_i_1_n_0\,
      Q => in14(16),
      R => rst
    );
\cmd_byte_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[16]_i_1_n_0\,
      Q => in14(17),
      R => rst
    );
\cmd_byte_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[17]_i_1_n_0\,
      Q => in14(18),
      R => rst
    );
\cmd_byte_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[18]_i_1_n_0\,
      Q => in14(19),
      R => rst
    );
\cmd_byte_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[19]_i_1_n_0\,
      Q => in14(20),
      R => rst
    );
\cmd_byte_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[1]_i_1_n_0\,
      Q => in14(2),
      R => rst
    );
\cmd_byte_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[20]_i_1_n_0\,
      Q => in14(21),
      R => rst
    );
\cmd_byte_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[21]_i_1_n_0\,
      Q => in14(22),
      R => rst
    );
\cmd_byte_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[22]_i_1_n_0\,
      Q => in14(23),
      R => rst
    );
\cmd_byte_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[23]_i_1_n_0\,
      Q => in14(24),
      R => rst
    );
\cmd_byte_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[24]_i_1_n_0\,
      Q => in14(25),
      R => rst
    );
\cmd_byte_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[25]_i_1_n_0\,
      Q => in14(26),
      R => rst
    );
\cmd_byte_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[26]_i_1_n_0\,
      Q => in14(27),
      R => rst
    );
\cmd_byte_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[27]_i_1_n_0\,
      Q => in14(28),
      R => rst
    );
\cmd_byte_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[28]_i_1_n_0\,
      Q => in14(29),
      R => rst
    );
\cmd_byte_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[29]_i_1_n_0\,
      Q => in14(30),
      R => rst
    );
\cmd_byte_buf_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[2]_i_1_n_0\,
      Q => in14(3),
      S => rst
    );
\cmd_byte_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[30]_i_1_n_0\,
      Q => in14(31),
      R => rst
    );
\cmd_byte_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[31]_i_1_n_0\,
      Q => in14(32),
      R => rst
    );
\cmd_byte_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[32]_i_1_n_0\,
      Q => in14(33),
      R => rst
    );
\cmd_byte_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[33]_i_1_n_0\,
      Q => in14(34),
      R => rst
    );
\cmd_byte_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[34]_i_1_n_0\,
      Q => in14(35),
      R => rst
    );
\cmd_byte_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[35]_i_1_n_0\,
      Q => in14(36),
      R => rst
    );
\cmd_byte_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[36]_i_1_n_0\,
      Q => in14(37),
      R => rst
    );
\cmd_byte_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[37]_i_1_n_0\,
      Q => in14(38),
      R => rst
    );
\cmd_byte_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[38]_i_1_n_0\,
      Q => in14(39),
      R => rst
    );
\cmd_byte_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[39]_i_1_n_0\,
      Q => in14(40),
      R => rst
    );
\cmd_byte_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[3]_i_1_n_0\,
      Q => in14(4),
      R => rst
    );
\cmd_byte_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[40]_i_1_n_0\,
      Q => in14(41),
      R => rst
    );
\cmd_byte_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[41]_i_1_n_0\,
      Q => in14(42),
      R => rst
    );
\cmd_byte_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[42]_i_1_n_0\,
      Q => in14(43),
      R => rst
    );
\cmd_byte_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[43]_i_1_n_0\,
      Q => in14(44),
      R => rst
    );
\cmd_byte_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[44]_i_1_n_0\,
      Q => in14(45),
      R => rst
    );
\cmd_byte_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[45]_i_1_n_0\,
      Q => in14(46),
      R => rst
    );
\cmd_byte_buf_reg[46]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[46]_i_1_n_0\,
      Q => in14(47),
      S => rst
    );
\cmd_byte_buf_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[47]_i_2_n_0\,
      Q => p_0_in,
      R => rst
    );
\cmd_byte_buf_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[4]_i_1_n_0\,
      Q => in14(5),
      S => rst
    );
\cmd_byte_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[5]_i_1_n_0\,
      Q => in14(6),
      R => rst
    );
\cmd_byte_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[6]_i_1_n_0\,
      Q => in14(7),
      R => rst
    );
\cmd_byte_buf_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[7]_i_1_n_0\,
      Q => in14(8),
      S => rst
    );
\cmd_byte_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[8]_i_1_n_0\,
      Q => in14(9),
      R => rst
    );
\cmd_byte_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cmd_byte_buf,
      D => \cmd_byte_buf[9]_i_1_n_0\,
      Q => in14(10),
      R => rst
    );
cs_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAEAAA"
    )
        port map (
      I0 => cs_i_i_2_n_0,
      I1 => cs_i_i_3_n_0,
      I2 => cs_i_i_4_n_0,
      I3 => cs_i_i_5_n_0,
      I4 => cs_i_i_6_n_0,
      I5 => cs_i_i_7_n_0,
      O => cs_i
    );
cs_i_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[26]\,
      I1 => \CMD0_tries_reg_n_0_[27]\,
      I2 => \CMD0_tries_reg_n_0_[24]\,
      I3 => \CMD0_tries_reg_n_0_[25]\,
      I4 => cs_i_i_14_n_0,
      O => cs_i_i_10_n_0
    );
cs_i_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[18]\,
      I1 => \CMD0_tries_reg_n_0_[19]\,
      I2 => \CMD0_tries_reg_n_0_[16]\,
      I3 => \CMD0_tries_reg_n_0_[17]\,
      I4 => cs_i_i_15_n_0,
      O => cs_i_i_11_n_0
    );
cs_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[13]\,
      I1 => \CMD0_tries_reg_n_0_[12]\,
      I2 => \CMD0_tries_reg_n_0_[15]\,
      I3 => \CMD0_tries_reg_n_0_[14]\,
      O => cs_i_i_12_n_0
    );
cs_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[5]\,
      I1 => \CMD0_tries_reg_n_0_[4]\,
      I2 => \CMD0_tries_reg_n_0_[6]\,
      I3 => \CMD0_tries_reg_n_0_[7]\,
      O => cs_i_i_13_n_0
    );
cs_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[29]\,
      I1 => \CMD0_tries_reg_n_0_[28]\,
      I2 => \CMD0_tries_reg_n_0_[31]\,
      I3 => \CMD0_tries_reg_n_0_[30]\,
      O => cs_i_i_14_n_0
    );
cs_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[21]\,
      I1 => \CMD0_tries_reg_n_0_[20]\,
      I2 => \CMD0_tries_reg_n_0_[23]\,
      I3 => \CMD0_tries_reg_n_0_[22]\,
      O => cs_i_i_15_n_0
    );
cs_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2040"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      O => cs_i_i_2_n_0
    );
cs_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000001"
    )
        port map (
      I0 => cs_i_i_8_n_0,
      I1 => cs_i_i_9_n_0,
      I2 => cs_i_i_10_n_0,
      I3 => cs_i_i_11_n_0,
      I4 => state(3),
      I5 => state(2),
      O => cs_i_i_3_n_0
    );
cs_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => cs_i_i_4_n_0
    );
cs_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \clk_count_reg_n_0_[1]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[2]\,
      I3 => \^sck_i_reg_0\,
      I4 => \byte_buf[0]_i_2_n_0\,
      O => cs_i_i_5_n_0
    );
cs_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001154"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      O => cs_i_i_6_n_0
    );
cs_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00EAC00A00AF0A"
    )
        port map (
      I0 => \response_test_byte_i[7]_i_3_n_0\,
      I1 => cs_i_i_5_n_0,
      I2 => state(3),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => cs_i_i_7_n_0
    );
cs_i_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[10]\,
      I1 => \CMD0_tries_reg_n_0_[11]\,
      I2 => \CMD0_tries_reg_n_0_[8]\,
      I3 => \CMD0_tries_reg_n_0_[9]\,
      I4 => cs_i_i_12_n_0,
      O => cs_i_i_8_n_0
    );
cs_i_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \CMD0_tries_reg_n_0_[3]\,
      I1 => \CMD0_tries_reg_n_0_[2]\,
      I2 => \CMD0_tries_reg_n_0_[0]\,
      I3 => \CMD0_tries_reg_n_0_[1]\,
      I4 => cs_i_i_13_n_0,
      O => cs_i_i_9_n_0
    );
cs_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cs_i,
      Q => cs,
      S => rst
    );
done_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => rst,
      I5 => \^done\,
      O => done_i_i_1_n_0
    );
done_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_i_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
mosi_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC20A0B20020A082"
    )
        port map (
      I0 => p_0_in,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => state(3),
      I5 => \^mosi\,
      O => mosi_i_i_1_n_0
    );
mosi_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mosi_i_i_1_n_0,
      Q => \^mosi\,
      R => rst
    );
response_test_DV_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC33333C00222220"
    )
        port map (
      I0 => cs_i_i_5_n_0,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => \^test_dv\,
      O => response_test_DV_i_i_1_n_0
    );
response_test_DV_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => response_test_DV_i_i_1_n_0,
      Q => \^test_dv\,
      R => rst
    );
\response_test_byte_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[0]\,
      O => response_test_byte_i0_in(0)
    );
\response_test_byte_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[1]\,
      O => response_test_byte_i0_in(1)
    );
\response_test_byte_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[2]\,
      O => response_test_byte_i0_in(2)
    );
\response_test_byte_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[3]\,
      O => response_test_byte_i0_in(3)
    );
\response_test_byte_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[4]\,
      O => response_test_byte_i0_in(4)
    );
\response_test_byte_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[5]\,
      O => response_test_byte_i0_in(5)
    );
\response_test_byte_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[6]\,
      O => response_test_byte_i0_in(6)
    );
\response_test_byte_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBB3BB20C883882"
    )
        port map (
      I0 => \response_test_byte_i[7]_i_3_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => cs_i_i_5_n_0,
      O => response_test_byte_i
    );
\response_test_byte_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13120000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \byte_buf_reg_n_0_[7]\,
      O => response_test_byte_i0_in(7)
    );
\response_test_byte_i[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sck_i_reg_0\,
      I1 => \clk_count_reg_n_0_[1]\,
      I2 => \clk_count_reg_n_0_[0]\,
      I3 => \clk_count_reg_n_0_[2]\,
      I4 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \response_test_byte_i[7]_i_3_n_0\
    );
\response_test_byte_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(0),
      Q => test_byte(0),
      R => rst
    );
\response_test_byte_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(1),
      Q => test_byte(1),
      R => rst
    );
\response_test_byte_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(2),
      Q => test_byte(2),
      R => rst
    );
\response_test_byte_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(3),
      Q => test_byte(3),
      R => rst
    );
\response_test_byte_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(4),
      Q => test_byte(4),
      R => rst
    );
\response_test_byte_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(5),
      Q => test_byte(5),
      R => rst
    );
\response_test_byte_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(6),
      Q => test_byte(6),
      R => rst
    );
\response_test_byte_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => response_test_byte_i,
      D => response_test_byte_i0_in(7),
      Q => test_byte(7),
      R => rst
    );
sck_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA2BCAAA05140555"
    )
        port map (
      I0 => sck_i_i_2_n_0,
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => state(0),
      I5 => \^sck_i_reg_0\,
      O => sck_i_i_1_n_0
    );
sck_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \clk_count_reg_n_0_[1]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[2]\,
      O => sck_i_i_2_n_0
    );
sck_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sck_i_i_1_n_0,
      Q => \^sck_i_reg_0\,
      R => rst
    );
test_give_response_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F01FFFF1F010000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => test_give_response1_out,
      I5 => \^test_give_response\,
      O => test_give_response_i_1_n_0
    );
test_give_response_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0154155500001554"
    )
        port map (
      I0 => rst,
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \response_test_byte_i[7]_i_3_n_0\,
      O => test_give_response1_out
    );
test_give_response_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => test_give_response_i_1_n_0,
      Q => \^test_give_response\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_init_test_SD_init_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    cs : out STD_LOGIC;
    done : out STD_LOGIC;
    test_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_DV : out STD_LOGIC;
    test_give_response : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SD_init_test_SD_init_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_init_test_SD_init_0_1 : entity is "SD_init_test_SD_init_0_1,SD_init,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_init_test_SD_init_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_init_test_SD_init_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SD_init_test_SD_init_0_1 : entity is "SD_init,Vivado 2024.2";
end SD_init_test_SD_init_0_1;

architecture STRUCTURE of SD_init_test_SD_init_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.SD_init_test_SD_init_0_1_SD_init
     port map (
      clk => clk,
      cs => cs,
      done => done,
      miso => miso,
      mosi => mosi,
      rst => rst,
      sck_i_reg_0 => sck,
      test_DV => test_DV,
      test_byte(7 downto 0) => test_byte(7 downto 0),
      test_give_response => test_give_response
    );
end STRUCTURE;
