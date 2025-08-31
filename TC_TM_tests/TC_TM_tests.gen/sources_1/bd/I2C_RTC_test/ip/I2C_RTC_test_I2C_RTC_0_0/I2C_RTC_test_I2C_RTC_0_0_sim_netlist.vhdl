-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Aug 23 17:18:23 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/FPGA_testing/TC_TM_tests/TC_TM_tests.gen/sources_1/bd/I2C_RTC_test/ip/I2C_RTC_test_I2C_RTC_0_0/I2C_RTC_test_I2C_RTC_0_0_sim_netlist.vhdl
-- Design      : I2C_RTC_test_I2C_RTC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_RTC_test_I2C_RTC_0_0_I2C_RTC is
  port (
    RTC_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_i2c_rw : out STD_LOGIC;
    RTC_DV : out STD_LOGIC;
    i_busy : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    TX_done : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2C_RTC_test_I2C_RTC_0_0_I2C_RTC : entity is "I2C_RTC";
end I2C_RTC_test_I2C_RTC_0_0_I2C_RTC;

architecture STRUCTURE of I2C_RTC_test_I2C_RTC_0_0_I2C_RTC is
  signal \FSM_sequential_state[0]_inv_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_inv_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_inv_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_inv_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^rtc_dv\ : STD_LOGIC;
  signal RTC_DV_i_1_n_0 : STD_LOGIC;
  signal RTC_DV_i_2_n_0 : STD_LOGIC;
  signal \RTC_data[7]_i_1_n_0\ : STD_LOGIC;
  signal RTC_data_i : STD_LOGIC_VECTOR ( 63 downto 39 );
  signal RTC_data_i0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RTC_data_i[39]_i_2_n_0\ : STD_LOGIC;
  signal \RTC_data_i[47]_i_2_n_0\ : STD_LOGIC;
  signal \RTC_data_i[55]_i_2_n_0\ : STD_LOGIC;
  signal \RTC_data_i[63]_i_3_n_0\ : STD_LOGIC;
  signal \RTC_data_i[63]_i_4_n_0\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[32]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[33]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[35]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[36]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[37]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[38]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[39]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[40]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[41]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[42]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[43]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[44]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[45]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[46]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[47]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[48]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[49]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[50]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[51]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[52]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[53]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[54]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[55]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[56]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[57]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[58]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[59]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[60]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[61]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[62]\ : STD_LOGIC;
  signal \RTC_data_i_reg_n_0_[63]\ : STD_LOGIC;
  signal busy_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \busy_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal busy_prev : STD_LOGIC;
  signal busy_prev_reg_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal mess_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mess_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^o_i2c_address\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_i2c_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \^o_i2c_ena\ : STD_LOGIC;
  signal o_i2c_ena_i_1_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_2_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_3_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_4_n_0 : STD_LOGIC;
  signal \^o_i2c_rw\ : STD_LOGIC;
  signal o_i2c_rw_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reading_in_progress_i_1_n_0 : STD_LOGIC;
  signal reading_in_progress_i_2_n_0 : STD_LOGIC;
  signal reading_in_progress_reg_n_0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal timeout : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \timeout0_carry__0_n_0\ : STD_LOGIC;
  signal \timeout0_carry__0_n_1\ : STD_LOGIC;
  signal \timeout0_carry__0_n_2\ : STD_LOGIC;
  signal \timeout0_carry__0_n_3\ : STD_LOGIC;
  signal \timeout0_carry__1_n_0\ : STD_LOGIC;
  signal \timeout0_carry__1_n_1\ : STD_LOGIC;
  signal \timeout0_carry__1_n_2\ : STD_LOGIC;
  signal \timeout0_carry__1_n_3\ : STD_LOGIC;
  signal \timeout0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \timeout0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \timeout0_carry_i_1__2_n_0\ : STD_LOGIC;
  signal timeout0_carry_i_1_n_0 : STD_LOGIC;
  signal \timeout0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \timeout0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal timeout0_carry_i_2_n_0 : STD_LOGIC;
  signal \timeout0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \timeout0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal timeout0_carry_i_3_n_0 : STD_LOGIC;
  signal \timeout0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \timeout0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal timeout0_carry_i_4_n_0 : STD_LOGIC;
  signal timeout0_carry_i_5_n_0 : STD_LOGIC;
  signal timeout0_carry_n_0 : STD_LOGIC;
  signal timeout0_carry_n_1 : STD_LOGIC;
  signal timeout0_carry_n_2 : STD_LOGIC;
  signal timeout0_carry_n_3 : STD_LOGIC;
  signal \timeout[13]_i_2_n_0\ : STD_LOGIC;
  signal \timeout[13]_i_3_n_0\ : STD_LOGIC;
  signal \timeout[13]_i_4_n_0\ : STD_LOGIC;
  signal \timeout_reg_n_0_[0]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[10]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[11]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[12]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[13]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[1]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[2]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[3]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[4]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[5]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[6]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[7]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[8]\ : STD_LOGIC;
  signal \timeout_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_timeout0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timeout0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]_inv\ : label is "s_idle:11,s_rtc:00,s_cleanup:10,s_rtc_send:01";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[0]_inv\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s_idle:11,s_rtc:00,s_cleanup:10,s_rtc_send:01";
  attribute SOFT_HLUTNM of \RTC_data_i[39]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RTC_data_i[55]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RTC_data_i[56]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RTC_data_i[57]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RTC_data_i[58]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \RTC_data_i[59]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \RTC_data_i[60]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RTC_data_i[61]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RTC_data_i[62]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RTC_data_i[63]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RTC_data_i[63]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \busy_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of busy_prev_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mess_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_i2c_ena_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_i2c_ena_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of reading_in_progress_i_2 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of timeout0_carry : label is 35;
  attribute ADDER_THRESHOLD of \timeout0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timeout0_carry__2\ : label is 35;
begin
  RTC_DV <= \^rtc_dv\;
  o_i2c_address(0) <= \^o_i2c_address\(0);
  o_i2c_ena <= \^o_i2c_ena\;
  o_i2c_rw <= \^o_i2c_rw\;
\FSM_sequential_state[0]_inv_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010131310131"
    )
        port map (
      I0 => RTC_DV_i_2_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[0]_inv_i_2_n_0\,
      I4 => \FSM_sequential_state[0]_inv_i_3_n_0\,
      I5 => \FSM_sequential_state[0]_inv_i_4_n_0\,
      O => \FSM_sequential_state[0]_inv_i_1_n_0\
    );
\FSM_sequential_state[0]_inv_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => \busy_cnt_reg_n_0_[3]\,
      O => \FSM_sequential_state[0]_inv_i_2_n_0\
    );
\FSM_sequential_state[0]_inv_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_busy,
      I1 => \busy_cnt_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_inv_i_3_n_0\
    );
\FSM_sequential_state[0]_inv_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \timeout[13]_i_4_n_0\,
      I1 => \timeout_reg_n_0_[8]\,
      I2 => \timeout_reg_n_0_[11]\,
      I3 => \timeout_reg_n_0_[7]\,
      I4 => \timeout_reg_n_0_[0]\,
      I5 => \timeout[13]_i_2_n_0\,
      O => \FSM_sequential_state[0]_inv_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => RTC_DV_i_2_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_inv_i_1_n_0\,
      Q => \state__0\(0),
      S => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => rst
    );
RTC_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00010000"
    )
        port map (
      I0 => TX_done,
      I1 => rst,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => RTC_DV_i_2_n_0,
      I5 => \^rtc_dv\,
      O => RTC_DV_i_1_n_0
    );
RTC_DV_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555551550051AAAA"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[3]\,
      I1 => mess_cnt(0),
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => mess_cnt(1),
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => RTC_DV_i_2_n_0
    );
RTC_DV_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RTC_DV_i_1_n_0,
      Q => \^rtc_dv\,
      R => '0'
    );
\RTC_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[32]\,
      I1 => \RTC_data_i_reg_n_0_[48]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[40]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[56]\,
      O => p_0_in(0)
    );
\RTC_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[33]\,
      I1 => \RTC_data_i_reg_n_0_[49]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[41]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[57]\,
      O => p_0_in(1)
    );
\RTC_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[34]\,
      I1 => \RTC_data_i_reg_n_0_[50]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[42]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[58]\,
      O => p_0_in(2)
    );
\RTC_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[35]\,
      I1 => \RTC_data_i_reg_n_0_[51]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[43]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[59]\,
      O => p_0_in(3)
    );
\RTC_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[36]\,
      I1 => \RTC_data_i_reg_n_0_[52]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[44]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[60]\,
      O => p_0_in(4)
    );
\RTC_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[37]\,
      I1 => \RTC_data_i_reg_n_0_[53]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[45]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[61]\,
      O => p_0_in(5)
    );
\RTC_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[38]\,
      I1 => \RTC_data_i_reg_n_0_[54]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[46]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[62]\,
      O => p_0_in(6)
    );
\RTC_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => RTC_DV_i_2_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => rst,
      I4 => TX_done,
      O => \RTC_data[7]_i_1_n_0\
    );
\RTC_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RTC_data_i_reg_n_0_[39]\,
      I1 => \RTC_data_i_reg_n_0_[55]\,
      I2 => mess_cnt(0),
      I3 => \RTC_data_i_reg_n_0_[47]\,
      I4 => mess_cnt(1),
      I5 => \RTC_data_i_reg_n_0_[63]\,
      O => p_0_in(7)
    );
\RTC_data_i[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AB00AA00"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \RTC_data_i[63]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_inv_i_3_n_0\,
      I3 => \state__0\(0),
      I4 => \RTC_data_i[39]_i_2_n_0\,
      I5 => \busy_cnt_reg_n_0_[3]\,
      O => RTC_data_i(39)
    );
\RTC_data_i[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \busy_cnt_reg_n_0_[1]\,
      O => \RTC_data_i[39]_i_2_n_0\
    );
\RTC_data_i[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB0000AAAA0000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \RTC_data_i[63]_i_3_n_0\,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \state__0\(0),
      I5 => \RTC_data_i[47]_i_2_n_0\,
      O => RTC_data_i(47)
    );
\RTC_data_i[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[2]\,
      I5 => \busy_cnt_reg_n_0_[3]\,
      O => \RTC_data_i[47]_i_2_n_0\
    );
\RTC_data_i[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C88C88888888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => \RTC_data_i[55]_i_2_n_0\,
      I4 => \FSM_sequential_state[0]_inv_i_3_n_0\,
      I5 => \RTC_data_i[63]_i_4_n_0\,
      O => RTC_data_i(55)
    );
\RTC_data_i[55]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => i_busy,
      I1 => busy_prev_reg_n_0,
      I2 => \busy_cnt_reg_n_0_[0]\,
      O => \RTC_data_i[55]_i_2_n_0\
    );
\RTC_data_i[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(0),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(0)
    );
\RTC_data_i[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(1),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(1)
    );
\RTC_data_i[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(2),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(2)
    );
\RTC_data_i[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(3),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(3)
    );
\RTC_data_i[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(4),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(4)
    );
\RTC_data_i[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(5),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(5)
    );
\RTC_data_i[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(6),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(6)
    );
\RTC_data_i[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAE0000AAAA0000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \RTC_data_i[63]_i_3_n_0\,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \state__0\(0),
      I5 => \RTC_data_i[63]_i_4_n_0\,
      O => RTC_data_i(63)
    );
\RTC_data_i[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(7),
      I1 => \state__0\(1),
      O => RTC_data_i0_in(7)
    );
\RTC_data_i[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[0]\,
      O => \RTC_data_i[63]_i_3_n_0\
    );
\RTC_data_i[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000055155555"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[3]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => busy_prev_reg_n_0,
      I4 => i_busy,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => \RTC_data_i[63]_i_4_n_0\
    );
\RTC_data_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(0),
      Q => \RTC_data_i_reg_n_0_[32]\,
      R => rst
    );
\RTC_data_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(1),
      Q => \RTC_data_i_reg_n_0_[33]\,
      R => rst
    );
\RTC_data_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(2),
      Q => \RTC_data_i_reg_n_0_[34]\,
      R => rst
    );
\RTC_data_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(3),
      Q => \RTC_data_i_reg_n_0_[35]\,
      R => rst
    );
\RTC_data_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(4),
      Q => \RTC_data_i_reg_n_0_[36]\,
      R => rst
    );
\RTC_data_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(5),
      Q => \RTC_data_i_reg_n_0_[37]\,
      R => rst
    );
\RTC_data_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(6),
      Q => \RTC_data_i_reg_n_0_[38]\,
      R => rst
    );
\RTC_data_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(39),
      D => RTC_data_i0_in(7),
      Q => \RTC_data_i_reg_n_0_[39]\,
      R => rst
    );
\RTC_data_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(0),
      Q => \RTC_data_i_reg_n_0_[40]\,
      R => rst
    );
\RTC_data_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(1),
      Q => \RTC_data_i_reg_n_0_[41]\,
      R => rst
    );
\RTC_data_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(2),
      Q => \RTC_data_i_reg_n_0_[42]\,
      R => rst
    );
\RTC_data_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(3),
      Q => \RTC_data_i_reg_n_0_[43]\,
      R => rst
    );
\RTC_data_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(4),
      Q => \RTC_data_i_reg_n_0_[44]\,
      R => rst
    );
\RTC_data_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(5),
      Q => \RTC_data_i_reg_n_0_[45]\,
      R => rst
    );
\RTC_data_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(6),
      Q => \RTC_data_i_reg_n_0_[46]\,
      R => rst
    );
\RTC_data_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(47),
      D => RTC_data_i0_in(7),
      Q => \RTC_data_i_reg_n_0_[47]\,
      R => rst
    );
\RTC_data_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(0),
      Q => \RTC_data_i_reg_n_0_[48]\,
      R => rst
    );
\RTC_data_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(1),
      Q => \RTC_data_i_reg_n_0_[49]\,
      R => rst
    );
\RTC_data_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(2),
      Q => \RTC_data_i_reg_n_0_[50]\,
      R => rst
    );
\RTC_data_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(3),
      Q => \RTC_data_i_reg_n_0_[51]\,
      R => rst
    );
\RTC_data_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(4),
      Q => \RTC_data_i_reg_n_0_[52]\,
      R => rst
    );
\RTC_data_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(5),
      Q => \RTC_data_i_reg_n_0_[53]\,
      R => rst
    );
\RTC_data_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(6),
      Q => \RTC_data_i_reg_n_0_[54]\,
      R => rst
    );
\RTC_data_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(55),
      D => RTC_data_i0_in(7),
      Q => \RTC_data_i_reg_n_0_[55]\,
      R => rst
    );
\RTC_data_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(0),
      Q => \RTC_data_i_reg_n_0_[56]\,
      R => rst
    );
\RTC_data_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(1),
      Q => \RTC_data_i_reg_n_0_[57]\,
      R => rst
    );
\RTC_data_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(2),
      Q => \RTC_data_i_reg_n_0_[58]\,
      R => rst
    );
\RTC_data_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(3),
      Q => \RTC_data_i_reg_n_0_[59]\,
      R => rst
    );
\RTC_data_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(4),
      Q => \RTC_data_i_reg_n_0_[60]\,
      R => rst
    );
\RTC_data_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(5),
      Q => \RTC_data_i_reg_n_0_[61]\,
      R => rst
    );
\RTC_data_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(6),
      Q => \RTC_data_i_reg_n_0_[62]\,
      R => rst
    );
\RTC_data_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RTC_data_i(63),
      D => RTC_data_i0_in(7),
      Q => \RTC_data_i_reg_n_0_[63]\,
      R => rst
    );
\RTC_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => RTC_data(0),
      R => '0'
    );
\RTC_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => RTC_data(1),
      R => '0'
    );
\RTC_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => RTC_data(2),
      R => '0'
    );
\RTC_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => RTC_data(3),
      R => '0'
    );
\RTC_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => RTC_data(4),
      R => '0'
    );
\RTC_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => RTC_data(5),
      R => '0'
    );
\RTC_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => RTC_data(6),
      R => '0'
    );
\RTC_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \RTC_data[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => RTC_data(7),
      R => '0'
    );
\busy_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111011111111"
    )
        port map (
      I0 => o_i2c_ena_i_3_n_0,
      I1 => \state__0\(1),
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[2]\,
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[3]\,
      O => busy_cnt(0)
    );
\busy_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \state__0\(1),
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \busy_cnt_reg_n_0_[1]\,
      O => \busy_cnt[1]_i_1_n_0\
    );
\busy_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[2]\,
      I5 => \state__0\(1),
      O => busy_cnt(2)
    );
\busy_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005554"
    )
        port map (
      I0 => o_i2c_ena_i_2_n_0,
      I1 => \busy_cnt_reg_n_0_[2]\,
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[0]_inv_i_3_n_0\,
      I4 => \state__0\(1),
      O => busy_cnt(3)
    );
\busy_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => busy_cnt(0),
      Q => \busy_cnt_reg_n_0_[0]\,
      R => rst
    );
\busy_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => \busy_cnt[1]_i_1_n_0\,
      Q => \busy_cnt_reg_n_0_[1]\,
      R => rst
    );
\busy_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => busy_cnt(2),
      Q => \busy_cnt_reg_n_0_[2]\,
      R => rst
    );
\busy_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => busy_cnt(3),
      Q => \busy_cnt_reg_n_0_[3]\,
      R => rst
    );
busy_prev_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_busy,
      I1 => \state__0\(1),
      O => busy_prev
    );
busy_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \state__0\(0),
      D => busy_prev,
      Q => busy_prev_reg_n_0,
      R => rst
    );
\mess_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D3F0200"
    )
        port map (
      I0 => RTC_DV_i_2_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => TX_done,
      I4 => mess_cnt(0),
      O => \mess_cnt[0]_i_1_n_0\
    );
\mess_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF70FFF00080000"
    )
        port map (
      I0 => mess_cnt(0),
      I1 => RTC_DV_i_2_n_0,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => TX_done,
      I5 => mess_cnt(1),
      O => \mess_cnt[1]_i_1_n_0\
    );
\mess_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mess_cnt[0]_i_1_n_0\,
      Q => mess_cnt(0),
      R => rst
    );
\mess_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mess_cnt[1]_i_1_n_0\,
      Q => mess_cnt(1),
      R => rst
    );
\o_i2c_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF00002282"
    )
        port map (
      I0 => \o_i2c_address[6]_i_2_n_0\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      I3 => busy_prev_reg_n_0,
      I4 => \state__0\(1),
      I5 => \^o_i2c_address\(0),
      O => \o_i2c_address[6]_i_1_n_0\
    );
\o_i2c_address[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88C8888888888C88"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \busy_cnt_reg_n_0_[2]\,
      I3 => \RTC_data_i[55]_i_2_n_0\,
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[3]\,
      O => \o_i2c_address[6]_i_2_n_0\
    );
\o_i2c_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o_i2c_address[6]_i_1_n_0\,
      Q => \^o_i2c_address\(0),
      R => rst
    );
o_i2c_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF0000080000"
    )
        port map (
      I0 => o_i2c_ena_i_2_n_0,
      I1 => o_i2c_ena_i_3_n_0,
      I2 => o_i2c_ena_i_4_n_0,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \^o_i2c_ena\,
      O => o_i2c_ena_i_1_n_0
    );
o_i2c_ena_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555955555555555"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[3]\,
      I1 => \busy_cnt_reg_n_0_[2]\,
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => busy_prev_reg_n_0,
      I5 => i_busy,
      O => o_i2c_ena_i_2_n_0
    );
o_i2c_ena_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      O => o_i2c_ena_i_3_n_0
    );
o_i2c_ena_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFAEAA"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[2]\,
      O => o_i2c_ena_i_4_n_0
    );
o_i2c_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_ena_i_1_n_0,
      Q => \^o_i2c_ena\,
      R => rst
    );
o_i2c_rw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4510FFFF45100000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \o_i2c_address[6]_i_2_n_0\,
      I5 => \^o_i2c_rw\,
      O => o_i2c_rw_i_1_n_0
    );
o_i2c_rw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_rw_i_1_n_0,
      Q => \^o_i2c_rw\,
      R => rst
    );
reading_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000050"
    )
        port map (
      I0 => reading_in_progress_i_2_n_0,
      I1 => \FSM_sequential_state[0]_inv_i_4_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => rst,
      I5 => reading_in_progress_reg_n_0,
      O => reading_in_progress_i_1_n_0
    );
reading_in_progress_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => busy_prev_reg_n_0,
      I1 => i_busy,
      O => reading_in_progress_i_2_n_0
    );
reading_in_progress_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => reading_in_progress_i_1_n_0,
      Q => reading_in_progress_reg_n_0,
      R => '0'
    );
timeout0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timeout0_carry_n_0,
      CO(2) => timeout0_carry_n_1,
      CO(1) => timeout0_carry_n_2,
      CO(0) => timeout0_carry_n_3,
      CYINIT => timeout0_carry_i_1_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \timeout0_carry_i_2__0_n_0\,
      S(2) => \timeout0_carry_i_3__1_n_0\,
      S(1) => \timeout0_carry_i_4__0_n_0\,
      S(0) => timeout0_carry_i_5_n_0
    );
\timeout0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timeout0_carry_n_0,
      CO(3) => \timeout0_carry__0_n_0\,
      CO(2) => \timeout0_carry__0_n_1\,
      CO(1) => \timeout0_carry__0_n_2\,
      CO(0) => \timeout0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \timeout0_carry_i_1__1_n_0\,
      S(2) => timeout0_carry_i_2_n_0,
      S(1) => timeout0_carry_i_3_n_0,
      S(0) => timeout0_carry_i_4_n_0
    );
\timeout0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout0_carry__0_n_0\,
      CO(3) => \timeout0_carry__1_n_0\,
      CO(2) => \timeout0_carry__1_n_1\,
      CO(1) => \timeout0_carry__1_n_2\,
      CO(0) => \timeout0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \timeout0_carry_i_1__0_n_0\,
      S(2) => \timeout0_carry_i_2__1_n_0\,
      S(1) => \timeout0_carry_i_3__0_n_0\,
      S(0) => \timeout0_carry_i_4__1_n_0\
    );
\timeout0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_timeout0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_timeout0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => \timeout0_carry_i_1__2_n_0\
    );
timeout0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \timeout_reg_n_0_[0]\,
      I1 => reading_in_progress_reg_n_0,
      O => timeout0_carry_i_1_n_0
    );
\timeout0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[12]\,
      O => \timeout0_carry_i_1__0_n_0\
    );
\timeout0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[8]\,
      O => \timeout0_carry_i_1__1_n_0\
    );
\timeout0_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[13]\,
      O => \timeout0_carry_i_1__2_n_0\
    );
timeout0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[7]\,
      O => timeout0_carry_i_2_n_0
    );
\timeout0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[4]\,
      O => \timeout0_carry_i_2__0_n_0\
    );
\timeout0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[11]\,
      O => \timeout0_carry_i_2__1_n_0\
    );
timeout0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \timeout_reg_n_0_[6]\,
      I1 => reading_in_progress_reg_n_0,
      O => timeout0_carry_i_3_n_0
    );
\timeout0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[10]\,
      O => \timeout0_carry_i_3__0_n_0\
    );
\timeout0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[3]\,
      O => \timeout0_carry_i_3__1_n_0\
    );
timeout0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[5]\,
      O => timeout0_carry_i_4_n_0
    );
\timeout0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[2]\,
      O => \timeout0_carry_i_4__0_n_0\
    );
\timeout0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[9]\,
      O => \timeout0_carry_i_4__1_n_0\
    );
timeout0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reading_in_progress_reg_n_0,
      I1 => \timeout_reg_n_0_[1]\,
      O => timeout0_carry_i_5_n_0
    );
\timeout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000554555455545"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => reading_in_progress_reg_n_0,
      I5 => \timeout_reg_n_0_[0]\,
      O => timeout(0)
    );
\timeout[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(10),
      O => timeout(10)
    );
\timeout[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(11),
      O => timeout(11)
    );
\timeout[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(12),
      O => timeout(12)
    );
\timeout[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(13),
      O => timeout(13)
    );
\timeout[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \timeout_reg_n_0_[3]\,
      I1 => \timeout_reg_n_0_[13]\,
      I2 => \timeout_reg_n_0_[12]\,
      I3 => \timeout_reg_n_0_[4]\,
      I4 => reading_in_progress_reg_n_0,
      I5 => \timeout_reg_n_0_[5]\,
      O => \timeout[13]_i_2_n_0\
    );
\timeout[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \timeout_reg_n_0_[8]\,
      I1 => \timeout_reg_n_0_[11]\,
      I2 => \timeout_reg_n_0_[7]\,
      I3 => \timeout_reg_n_0_[0]\,
      O => \timeout[13]_i_3_n_0\
    );
\timeout[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => \timeout_reg_n_0_[9]\,
      I1 => \timeout_reg_n_0_[10]\,
      I2 => \timeout_reg_n_0_[1]\,
      I3 => reading_in_progress_reg_n_0,
      I4 => \timeout_reg_n_0_[2]\,
      I5 => \timeout_reg_n_0_[6]\,
      O => \timeout[13]_i_4_n_0\
    );
\timeout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(1),
      O => timeout(1)
    );
\timeout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(2),
      O => timeout(2)
    );
\timeout[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(3),
      O => timeout(3)
    );
\timeout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(4),
      O => timeout(4)
    );
\timeout[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(5),
      O => timeout(5)
    );
\timeout[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(6),
      O => timeout(6)
    );
\timeout[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(7),
      O => timeout(7)
    );
\timeout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(8),
      O => timeout(8)
    );
\timeout[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \timeout[13]_i_2_n_0\,
      I2 => \timeout[13]_i_3_n_0\,
      I3 => \timeout[13]_i_4_n_0\,
      I4 => data0(9),
      O => timeout(9)
    );
\timeout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(0),
      Q => \timeout_reg_n_0_[0]\,
      R => rst
    );
\timeout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(10),
      Q => \timeout_reg_n_0_[10]\,
      R => rst
    );
\timeout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(11),
      Q => \timeout_reg_n_0_[11]\,
      R => rst
    );
\timeout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(12),
      Q => \timeout_reg_n_0_[12]\,
      R => rst
    );
\timeout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(13),
      Q => \timeout_reg_n_0_[13]\,
      R => rst
    );
\timeout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(1),
      Q => \timeout_reg_n_0_[1]\,
      R => rst
    );
\timeout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(2),
      Q => \timeout_reg_n_0_[2]\,
      R => rst
    );
\timeout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(3),
      Q => \timeout_reg_n_0_[3]\,
      R => rst
    );
\timeout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(4),
      Q => \timeout_reg_n_0_[4]\,
      R => rst
    );
\timeout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(5),
      Q => \timeout_reg_n_0_[5]\,
      R => rst
    );
\timeout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(6),
      Q => \timeout_reg_n_0_[6]\,
      R => rst
    );
\timeout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(7),
      Q => \timeout_reg_n_0_[7]\,
      R => rst
    );
\timeout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(8),
      Q => \timeout_reg_n_0_[8]\,
      R => rst
    );
\timeout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(0),
      D => timeout(9),
      Q => \timeout_reg_n_0_[9]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_RTC_test_I2C_RTC_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_done : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RTC_DV : out STD_LOGIC;
    RTC_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2C_RTC_test_I2C_RTC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2C_RTC_test_I2C_RTC_0_0 : entity is "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2C_RTC_test_I2C_RTC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2C_RTC_test_I2C_RTC_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2C_RTC_test_I2C_RTC_0_0 : entity is "I2C_RTC,Vivado 2024.2";
end I2C_RTC_test_I2C_RTC_0_0;

architecture STRUCTURE of I2C_RTC_test_I2C_RTC_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_i2c_address\ : STD_LOGIC_VECTOR ( 5 to 5 );
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
  o_i2c_address(6) <= \^o_i2c_address\(5);
  o_i2c_address(5) <= \^o_i2c_address\(5);
  o_i2c_address(4) <= \<const0>\;
  o_i2c_address(3) <= \^o_i2c_address\(5);
  o_i2c_address(2) <= \<const0>\;
  o_i2c_address(1) <= \<const0>\;
  o_i2c_address(0) <= \<const0>\;
  o_i2c_data_wr(7) <= \<const0>\;
  o_i2c_data_wr(6) <= \<const0>\;
  o_i2c_data_wr(5) <= \<const0>\;
  o_i2c_data_wr(4) <= \<const0>\;
  o_i2c_data_wr(3) <= \<const0>\;
  o_i2c_data_wr(2) <= \<const0>\;
  o_i2c_data_wr(1) <= \<const0>\;
  o_i2c_data_wr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.I2C_RTC_test_I2C_RTC_0_0_I2C_RTC
     port map (
      RTC_DV => RTC_DV,
      RTC_data(7 downto 0) => RTC_data(7 downto 0),
      TX_done => TX_done,
      clk => clk,
      i_busy => i_busy,
      i_data_read(7 downto 0) => i_data_read(7 downto 0),
      o_i2c_address(0) => \^o_i2c_address\(5),
      o_i2c_ena => o_i2c_ena,
      o_i2c_rw => o_i2c_rw,
      rst => rst
    );
end STRUCTURE;
