-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Aug  6 12:05:14 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_SD_RD_0_0/SD_Block_SD_RD_0_0_sim_netlist.vhdl
-- Design      : SD_Block_SD_RD_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_SD_RD_0_0_SD_RD is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cs_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    done : out STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SD_Block_SD_RD_0_0_SD_RD : entity is "SD_RD";
end SD_Block_SD_RD_0_0_SD_RD;

architecture STRUCTURE of SD_Block_SD_RD_0_0_SD_RD is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal byte_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \byte_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_2_n_0\ : STD_LOGIC;
  signal clk_div : STD_LOGIC;
  signal clk_div_i_1_n_0 : STD_LOGIC;
  signal \^cs_n\ : STD_LOGIC;
  signal cs_n_i_1_n_0 : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal mosi1_out : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,send_cmd:001,addr1:010,addr2:011,addr3:100,read_byte:101,finish:110,";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \byte_buf[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mosi_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mosi_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_2\ : label is "soft_lutpair3";
begin
  cs_n <= \^cs_n\;
  done <= \^done\;
  mosi <= \^mosi\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA5AAA5AAE4AA"
    )
        port map (
      I0 => \state__0\(0),
      I1 => start,
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => clk_div,
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFDF2020"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => clk_div,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF20FF00"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => clk_div,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2),
      R => rst
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101FF5F5F5F00"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \bit_cnt[2]_i_3_n_0\,
      I4 => \bit_cnt[0]_i_2_n_0\,
      I5 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060606060606000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => clk_div,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[0]_i_2_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => \bit_cnt[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => clk_div,
      I4 => \bit_cnt[2]_i_4_n_0\,
      I5 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F01015F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      O => bit_cnt(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => \bit_cnt[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => clk_div,
      I4 => \bit_cnt[2]_i_4_n_0\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F010101015F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => bit_cnt(2)
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CC0CC8"
    )
        port map (
      I0 => start,
      I1 => clk_div,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \bit_cnt[2]_i_4_n_0\
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
\byte_buf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => miso,
      I1 => \byte_buf[7]_i_2_n_0\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => byte_buf(0),
      O => \byte_buf[0]_i_1_n_0\
    );
\byte_buf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \byte_buf[7]_i_2_n_0\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => byte_buf(1),
      O => \byte_buf[1]_i_1_n_0\
    );
\byte_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(2),
      O => \byte_buf[2]_i_1_n_0\
    );
\byte_buf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(3),
      O => \byte_buf[3]_i_1_n_0\
    );
\byte_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(4),
      O => \byte_buf[4]_i_1_n_0\
    );
\byte_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(5),
      O => \byte_buf[5]_i_1_n_0\
    );
\byte_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(6),
      O => \byte_buf[6]_i_1_n_0\
    );
\byte_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => miso,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \byte_buf[7]_i_2_n_0\,
      I5 => byte_buf(7),
      O => \byte_buf[7]_i_1_n_0\
    );
\byte_buf[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \state__0\(0),
      I1 => clk_div,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => rst,
      O => \byte_buf[7]_i_2_n_0\
    );
\byte_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[0]_i_1_n_0\,
      Q => byte_buf(0),
      R => '0'
    );
\byte_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[1]_i_1_n_0\,
      Q => byte_buf(1),
      R => '0'
    );
\byte_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[2]_i_1_n_0\,
      Q => byte_buf(2),
      R => '0'
    );
\byte_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[3]_i_1_n_0\,
      Q => byte_buf(3),
      R => '0'
    );
\byte_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[4]_i_1_n_0\,
      Q => byte_buf(4),
      R => '0'
    );
\byte_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[5]_i_1_n_0\,
      Q => byte_buf(5),
      R => '0'
    );
\byte_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[6]_i_1_n_0\,
      Q => byte_buf(6),
      R => '0'
    );
\byte_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \byte_buf[7]_i_1_n_0\,
      Q => byte_buf(7),
      R => '0'
    );
clk_div_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rst,
      I1 => clk_div,
      O => clk_div_i_1_n_0
    );
clk_div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_div_i_1_n_0,
      Q => clk_div,
      R => '0'
    );
cs_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF08080000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => start,
      I4 => clk_div,
      I5 => \^cs_n\,
      O => cs_n_i_1_n_0
    );
cs_n_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => cs_n_i_1_n_0,
      Q => \^cs_n\,
      S => rst
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => clk_div,
      I2 => rst,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(0),
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(1),
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(2),
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(3),
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(4),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(5),
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(6),
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => byte_buf(7),
      Q => data_out(7),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => clk_div,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \^done\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => \^done\,
      R => rst
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2320FFFF23200000"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[1]\,
      I1 => mosi_i_2_n_0,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \shift_reg_reg_n_0_[0]\,
      I4 => mosi1_out,
      I5 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      O => mosi_i_2_n_0
    );
mosi_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3600"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => clk_div,
      O => mosi1_out
    );
mosi_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mosi_i_1_n_0,
      Q => \^mosi\,
      R => rst
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => clk_div,
      I3 => \shift_reg[0]_i_2_n_0\,
      I4 => \shift_reg_reg_n_0_[0]\,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101FF01010100"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => start,
      O => \shift_reg[0]_i_2_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFF00400040"
    )
        port map (
      I0 => \state__0\(2),
      I1 => clk_div,
      I2 => start,
      I3 => \shift_reg[1]_i_2_n_0\,
      I4 => \FSM_sequential_state[2]_i_2_n_0\,
      I5 => \shift_reg_reg_n_0_[1]\,
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \shift_reg[1]_i_2_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => rst
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_SD_RD_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    cs_n : out STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    done : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SD_Block_SD_RD_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_Block_SD_RD_0_0 : entity is "SD_Block_SD_RD_0_0,SD_RD,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_Block_SD_RD_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_Block_SD_RD_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SD_Block_SD_RD_0_0 : entity is "SD_RD,Vivado 2024.2";
end SD_Block_SD_RD_0_0;

architecture STRUCTURE of SD_Block_SD_RD_0_0 is
  signal \<const0>\ : STD_LOGIC;
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
  sck <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.SD_Block_SD_RD_0_0_SD_RD
     port map (
      clk => clk,
      cs_n => cs_n,
      data_out(7 downto 0) => data_out(7 downto 0),
      done => done,
      miso => miso,
      mosi => mosi,
      rst => rst,
      start => start
    );
end STRUCTURE;
