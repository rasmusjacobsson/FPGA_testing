-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Aug  6 12:04:30 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_SD_WR_0_0/SD_Block_SD_WR_0_0_sim_netlist.vhdl
-- Design      : SD_Block_SD_WR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_SD_WR_0_0_SD_WR is
  port (
    sck_i_reg_0 : out STD_LOGIC;
    cs : out STD_LOGIC;
    done_flag : out STD_LOGIC;
    mosi : out STD_LOGIC;
    start : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SD_Block_SD_WR_0_0_SD_WR : entity is "SD_WR";
end SD_Block_SD_WR_0_0_SD_WR;

architecture STRUCTURE of SD_Block_SD_WR_0_0_SD_WR is
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal byte_buf : STD_LOGIC;
  signal \byte_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[1]_i_3_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_3_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_4_n_0\ : STD_LOGIC;
  signal \byte_buf[2]_i_5_n_0\ : STD_LOGIC;
  signal \byte_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_buf[6]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_2_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal \byte_buf[7]_i_4_n_0\ : STD_LOGIC;
  signal \^cs\ : STD_LOGIC;
  signal cs_i_i_1_n_0 : STD_LOGIC;
  signal cs_i_i_2_n_0 : STD_LOGIC;
  signal cs_i_i_3_n_0 : STD_LOGIC;
  signal cs_i_i_4_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^done_flag\ : STD_LOGIC;
  signal done_flag_i_i_1_n_0 : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i : STD_LOGIC;
  signal mosi_i_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sck_i_i_1_n_0 : STD_LOGIC;
  signal sck_i_i_2_n_0 : STD_LOGIC;
  signal \^sck_i_reg_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \byte_buf[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \byte_buf[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \byte_buf[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \byte_buf[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \byte_buf[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \byte_buf[2]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \byte_buf[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \byte_buf[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \byte_buf[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \byte_buf[7]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of cs_i_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of cs_i_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cs_i_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mosi_i_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sck_i_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[3]_i_2\ : label is "soft_lutpair8";
begin
  cs <= \^cs\;
  done_flag <= \^done_flag\;
  mosi <= \^mosi\;
  sck_i_reg_0 <= \^sck_i_reg_0\;
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E266"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => start,
      I3 => \state_reg_n_0_[3]\,
      I4 => rst,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EE6A226A"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => bit_cnt(0),
      I3 => \state_reg_n_0_[3]\,
      I4 => start,
      I5 => rst,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAE62A26"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \bit_cnt[2]_i_3_n_0\,
      I4 => start,
      I5 => rst,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001FFF00000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => start,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^sck_i_reg_0\,
      I5 => \state_reg_n_0_[3]\,
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => bit_cnt(1),
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => bit_cnt(0),
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => bit_cnt(1),
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => bit_cnt(2),
      R => '0'
    );
\byte_buf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040004"
    )
        port map (
      I0 => cs_i_i_3_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => start,
      O => \byte_buf[0]_i_1_n_0\
    );
\byte_buf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F0F8"
    )
        port map (
      I0 => data0(1),
      I1 => \byte_buf[1]_i_2_n_0\,
      I2 => \byte_buf[1]_i_3_n_0\,
      I3 => \state_reg_n_0_[3]\,
      I4 => start,
      O => \byte_buf[1]_i_1_n_0\
    );
\byte_buf[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFFFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => bit_cnt(2),
      I3 => bit_cnt(0),
      I4 => bit_cnt(1),
      O => \byte_buf[1]_i_2_n_0\
    );
\byte_buf[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800000F"
    )
        port map (
      I0 => data0(1),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => \byte_buf[1]_i_3_n_0\
    );
\byte_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFF4FFF4"
    )
        port map (
      I0 => cs_i_i_3_n_0,
      I1 => \byte_buf[7]_i_4_n_0\,
      I2 => \byte_buf[2]_i_2_n_0\,
      I3 => \byte_buf[2]_i_3_n_0\,
      I4 => \byte_buf[2]_i_4_n_0\,
      I5 => \byte_buf[2]_i_5_n_0\,
      O => \byte_buf[2]_i_1_n_0\
    );
\byte_buf[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[3]\,
      O => \byte_buf[2]_i_2_n_0\
    );
\byte_buf[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      O => \byte_buf[2]_i_3_n_0\
    );
\byte_buf[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F007F7FFFFF"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => \byte_buf[2]_i_4_n_0\
    );
\byte_buf[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \state_reg_n_0_[3]\,
      O => \byte_buf[2]_i_5_n_0\
    );
\byte_buf[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \byte_buf[6]_i_2_n_0\,
      I1 => data0(3),
      I2 => \state_reg_n_0_[3]\,
      I3 => start,
      O => \byte_buf[3]_i_1_n_0\
    );
\byte_buf[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \byte_buf[6]_i_2_n_0\,
      I1 => data0(4),
      I2 => \state_reg_n_0_[3]\,
      I3 => start,
      O => \byte_buf[4]_i_1_n_0\
    );
\byte_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088F088FFFFF088"
    )
        port map (
      I0 => \byte_buf[7]_i_3_n_0\,
      I1 => data0(5),
      I2 => start,
      I3 => \state_reg_n_0_[3]\,
      I4 => \byte_buf[7]_i_4_n_0\,
      I5 => cs_i_i_3_n_0,
      O => \byte_buf[5]_i_1_n_0\
    );
\byte_buf[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \byte_buf[6]_i_2_n_0\,
      I1 => data0(6),
      I2 => \state_reg_n_0_[3]\,
      I3 => start,
      O => \byte_buf[6]_i_1_n_0\
    );
\byte_buf[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7F7F00FF00"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => \byte_buf[6]_i_2_n_0\
    );
\byte_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444544454445444A"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \^sck_i_reg_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => start,
      I5 => \state_reg_n_0_[1]\,
      O => byte_buf
    );
\byte_buf[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088F088FFFFF088"
    )
        port map (
      I0 => \byte_buf[7]_i_3_n_0\,
      I1 => data0(7),
      I2 => start,
      I3 => \state_reg_n_0_[3]\,
      I4 => \byte_buf[7]_i_4_n_0\,
      I5 => cs_i_i_3_n_0,
      O => \byte_buf[7]_i_2_n_0\
    );
\byte_buf[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7FFFFF7F0000"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[0]\,
      O => \byte_buf[7]_i_3_n_0\
    );
\byte_buf[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      O => \byte_buf[7]_i_4_n_0\
    );
\byte_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[0]_i_1_n_0\,
      Q => data0(1),
      R => rst
    );
\byte_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[1]_i_1_n_0\,
      Q => data0(2),
      R => rst
    );
\byte_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[2]_i_1_n_0\,
      Q => data0(3),
      R => rst
    );
\byte_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[3]_i_1_n_0\,
      Q => data0(4),
      R => rst
    );
\byte_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[4]_i_1_n_0\,
      Q => data0(5),
      R => rst
    );
\byte_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[5]_i_1_n_0\,
      Q => data0(6),
      R => rst
    );
\byte_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[6]_i_1_n_0\,
      Q => data0(7),
      R => rst
    );
\byte_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => byte_buf,
      D => \byte_buf[7]_i_2_n_0\,
      Q => p_0_in,
      R => rst
    );
cs_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAE00A2"
    )
        port map (
      I0 => \^cs\,
      I1 => cs_i_i_2_n_0,
      I2 => cs_i_i_3_n_0,
      I3 => cs_i_i_4_n_0,
      I4 => sck_i_i_2_n_0,
      I5 => rst,
      O => cs_i_i_1_n_0
    );
cs_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000008"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \^sck_i_reg_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      O => cs_i_i_2_n_0
    );
cs_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      O => cs_i_i_3_n_0
    );
cs_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => start,
      O => cs_i_i_4_n_0
    );
cs_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => cs_i_i_1_n_0,
      Q => \^cs\,
      R => '0'
    );
done_flag_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => start,
      I1 => rst,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => sck_i_i_2_n_0,
      I5 => \^done_flag\,
      O => done_flag_i_i_1_n_0
    );
done_flag_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_flag_i_i_1_n_0,
      Q => \^done_flag\,
      R => '0'
    );
mosi_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2EEE222"
    )
        port map (
      I0 => \^mosi\,
      I1 => mosi_i,
      I2 => start,
      I3 => \state_reg_n_0_[3]\,
      I4 => p_0_in,
      I5 => rst,
      O => mosi_i_i_1_n_0
    );
mosi_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F10"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => start,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => mosi_i
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
      R => '0'
    );
sck_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6A6A686"
    )
        port map (
      I0 => \^sck_i_reg_0\,
      I1 => sck_i_i_2_n_0,
      I2 => \state_reg_n_0_[3]\,
      I3 => start,
      I4 => \state_reg_n_0_[1]\,
      I5 => rst,
      O => sck_i_i_1_n_0
    );
sck_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
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
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFBEBEF0F0BEBE"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => start,
      I2 => \state_reg_n_0_[3]\,
      I3 => cs_i_i_3_n_0,
      I4 => sck_i_i_2_n_0,
      I5 => \^sck_i_reg_0\,
      O => state
    );
\state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \state[3]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => rst
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state,
      D => \state[3]_i_2_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_SD_WR_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    cs : out STD_LOGIC;
    done_flag : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SD_Block_SD_WR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_Block_SD_WR_0_0 : entity is "SD_Block_SD_WR_0_0,SD_WR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_Block_SD_WR_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_Block_SD_WR_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SD_Block_SD_WR_0_0 : entity is "SD_WR,Vivado 2024.2";
end SD_Block_SD_WR_0_0;

architecture STRUCTURE of SD_Block_SD_WR_0_0 is
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
U0: entity work.SD_Block_SD_WR_0_0_SD_WR
     port map (
      clk => clk,
      cs => cs,
      done_flag => done_flag,
      mosi => mosi,
      rst => rst,
      sck_i_reg_0 => sck,
      start => start
    );
end STRUCTURE;
