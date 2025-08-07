-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Apr  7 09:53:29 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/UART/Read_GNSS/Read_GNSS.gen/sources_1/bd/GNSS_Reader/ip/GNSS_Reader_UART_RXmod_0_0/GNSS_Reader_UART_RXmod_0_0_sim_netlist.vhdl
-- Design      : GNSS_Reader_UART_RXmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_UART_RXmod_0_0_UART_RXmod is
  port (
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_RX_DV : out STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GNSS_Reader_UART_RXmod_0_0_UART_RXmod : entity is "UART_RXmod";
end GNSS_Reader_UART_RXmod_0_0_UART_RXmod;

architecture STRUCTURE of GNSS_Reader_UART_RXmod_0_0_UART_RXmod is
  signal \^o_rx_dv\ : STD_LOGIC;
  signal \^o_rx_byte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_5_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_6_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_7_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_RX_Byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_4_n_0\ : STD_LOGIC;
  signal r_RX_DV_i_1_n_0 : STD_LOGIC;
  signal r_RX_DV_i_2_n_0 : STD_LOGIC;
  signal r_RX_DV_i_3_n_0 : STD_LOGIC;
  signal r_RX_DV_i_4_n_0 : STD_LOGIC;
  signal r_RX_Data : STD_LOGIC;
  signal r_RX_Data_R : STD_LOGIC;
  signal \r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Bit_Index[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_Clk_Count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Clk_Count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_Clk_Count[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Clk_Count[8]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Clk_Count[8]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Clk_Count[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_RX_Byte[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_RX_Byte[7]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_RX_DV_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_RX_DV_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of r_RX_DV_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_SM_Main[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_SM_Main[2]_i_1\ : label is "soft_lutpair1";
begin
  o_RX_DV <= \^o_rx_dv\;
  o_RX_byte(7 downto 0) <= \^o_rx_byte\(7 downto 0);
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9A0"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => r_RX_DV_i_2_n_0,
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => \r_SM_Main_reg_n_0_[1]\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA9AAA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => r_RX_DV_i_2_n_0,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_SM_Main_reg_n_0_[2]\,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => r_RX_DV_i_2_n_0,
      I2 => \r_Bit_Index[2]_i_2_n_0\,
      I3 => \r_SM_Main_reg_n_0_[2]\,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_Bit_Index[2]_i_2_n_0\
    );
\r_Bit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[0]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Bit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[1]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Bit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[2]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0EE0000"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      I2 => \r_Clk_Count[8]_i_4_n_0\,
      I3 => \r_Clk_Count[8]_i_5_n_0\,
      I4 => r_RX_DV_i_2_n_0,
      I5 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0400"
    )
        port map (
      I0 => \r_Clk_Count[10]_i_2_n_0\,
      I1 => r_RX_DV_i_2_n_0,
      I2 => \r_Clk_Count[10]_i_3_n_0\,
      I3 => \r_Clk_Count[8]_i_2_n_0\,
      I4 => \r_Clk_Count_reg_n_0_[10]\,
      O => \r_Clk_Count[10]_i_1_n_0\
    );
\r_Clk_Count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[6]\,
      I3 => \r_Clk_Count[8]_i_7_n_0\,
      I4 => \r_Clk_Count_reg_n_0_[8]\,
      I5 => \r_Clk_Count_reg_n_0_[9]\,
      O => \r_Clk_Count[10]_i_2_n_0\
    );
\r_Clk_Count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555700005555"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main[1]_i_4_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_Clk_Count[8]_i_5_n_0\,
      O => \r_Clk_Count[10]_i_3_n_0\
    );
\r_Clk_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[1]_i_1_n_0\
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[2]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[2]_i_1_n_0\
    );
\r_Clk_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[3]_i_1_n_0\
    );
\r_Clk_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count_reg_n_0_[3]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_Clk_Count_reg_n_0_[1]\,
      I4 => \r_Clk_Count_reg_n_0_[2]\,
      O => \r_Clk_Count[4]_i_1_n_0\
    );
\r_Clk_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[5]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[2]\,
      I3 => \r_Clk_Count_reg_n_0_[1]\,
      I4 => \r_Clk_Count_reg_n_0_[0]\,
      I5 => \r_Clk_Count_reg_n_0_[3]\,
      O => \r_Clk_Count[5]_i_1_n_0\
    );
\r_Clk_Count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[6]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count[8]_i_7_n_0\,
      O => \r_Clk_Count[6]_i_1_n_0\
    );
\r_Clk_Count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count[8]_i_7_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      O => \r_Clk_Count[7]_i_1_n_0\
    );
\r_Clk_Count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA0202AAAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count[8]_i_2_n_0\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_Clk_Count[8]_i_4_n_0\,
      I4 => \r_Clk_Count[8]_i_5_n_0\,
      I5 => r_RX_DV_i_2_n_0,
      O => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555515555555555"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_Clk_Count[8]_i_5_n_0\,
      I2 => \r_Clk_Count[8]_i_6_n_0\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => r_RX_Data,
      O => \r_Clk_Count[8]_i_2_n_0\
    );
\r_Clk_Count[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count[8]_i_7_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[6]\,
      I3 => \r_Clk_Count_reg_n_0_[5]\,
      I4 => \r_Clk_Count_reg_n_0_[7]\,
      O => \r_Clk_Count[8]_i_3_n_0\
    );
\r_Clk_Count[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[5]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[9]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      I4 => \r_Clk_Count_reg_n_0_[3]\,
      I5 => \r_SM_Main_reg_n_0_[1]\,
      O => \r_Clk_Count[8]_i_4_n_0\
    );
\r_Clk_Count[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[8]\,
      I3 => \r_Clk_Count_reg_n_0_[10]\,
      I4 => \r_Clk_Count_reg_n_0_[7]\,
      I5 => \r_Clk_Count_reg_n_0_[6]\,
      O => \r_Clk_Count[8]_i_5_n_0\
    );
\r_Clk_Count[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F7FFF7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[5]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[9]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      I4 => \r_Clk_Count_reg_n_0_[1]\,
      I5 => \r_Clk_Count_reg_n_0_[3]\,
      O => \r_Clk_Count[8]_i_6_n_0\
    );
\r_Clk_Count[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      I3 => \r_Clk_Count_reg_n_0_[2]\,
      I4 => \r_Clk_Count_reg_n_0_[4]\,
      O => \r_Clk_Count[8]_i_7_n_0\
    );
\r_Clk_Count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF0200"
    )
        port map (
      I0 => r_RX_DV_i_2_n_0,
      I1 => \r_Clk_Count[10]_i_3_n_0\,
      I2 => \r_Clk_Count[9]_i_2_n_0\,
      I3 => \r_Clk_Count[8]_i_2_n_0\,
      I4 => \r_Clk_Count_reg_n_0_[9]\,
      O => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count[8]_i_7_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[6]\,
      I3 => \r_Clk_Count_reg_n_0_[5]\,
      I4 => \r_Clk_Count_reg_n_0_[7]\,
      O => \r_Clk_Count[9]_i_2_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[0]\,
      R => '0'
    );
\r_Clk_Count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Clk_Count[10]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[10]\,
      R => '0'
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[1]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[1]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[2]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[2]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[3]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[3]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[4]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[4]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[5]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[5]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[6]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[6]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[7]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[7]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[8]_i_2_n_0\,
      D => \r_Clk_Count[8]_i_3_n_0\,
      Q => \r_Clk_Count_reg_n_0_[8]\,
      R => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Clk_Count[9]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[9]\,
      R => '0'
    );
\r_RX_Byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_RX_Byte[7]_i_2_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[2]\,
      I5 => \^o_rx_byte\(0),
      O => \r_RX_Byte[0]_i_1_n_0\
    );
\r_RX_Byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_RX_Byte[7]_i_2_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[2]\,
      I5 => \^o_rx_byte\(1),
      O => \r_RX_Byte[1]_i_1_n_0\
    );
\r_RX_Byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_RX_Byte[7]_i_2_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[2]\,
      I5 => \^o_rx_byte\(2),
      O => \r_RX_Byte[2]_i_1_n_0\
    );
\r_RX_Byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_RX_Byte[7]_i_2_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[2]\,
      I5 => \^o_rx_byte\(3),
      O => \r_RX_Byte[3]_i_1_n_0\
    );
\r_RX_Byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(4),
      O => \r_RX_Byte[4]_i_1_n_0\
    );
\r_RX_Byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(5),
      O => \r_RX_Byte[5]_i_1_n_0\
    );
\r_RX_Byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(6),
      O => \r_RX_Byte[6]_i_1_n_0\
    );
\r_RX_Byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[7]_i_2_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      I4 => \r_Bit_Index_reg_n_0_[1]\,
      I5 => \^o_rx_byte\(7),
      O => \r_RX_Byte[7]_i_1_n_0\
    );
\r_RX_Byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7775FFFFFFFFFFFF"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_RX_Byte[7]_i_3_n_0\,
      I2 => r_RX_DV_i_4_n_0,
      I3 => r_RX_DV_i_3_n_0,
      I4 => \r_Clk_Count_reg_n_0_[10]\,
      I5 => \r_RX_Byte[7]_i_4_n_0\,
      O => \r_RX_Byte[7]_i_2_n_0\
    );
\r_RX_Byte[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      O => \r_RX_Byte[7]_i_3_n_0\
    );
\r_RX_Byte[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_RX_Byte[7]_i_4_n_0\
    );
\r_RX_Byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[0]_i_1_n_0\,
      Q => \^o_rx_byte\(0),
      R => '0'
    );
\r_RX_Byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[1]_i_1_n_0\,
      Q => \^o_rx_byte\(1),
      R => '0'
    );
\r_RX_Byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[2]_i_1_n_0\,
      Q => \^o_rx_byte\(2),
      R => '0'
    );
\r_RX_Byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[3]_i_1_n_0\,
      Q => \^o_rx_byte\(3),
      R => '0'
    );
\r_RX_Byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[4]_i_1_n_0\,
      Q => \^o_rx_byte\(4),
      R => '0'
    );
\r_RX_Byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[5]_i_1_n_0\,
      Q => \^o_rx_byte\(5),
      R => '0'
    );
\r_RX_Byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[6]_i_1_n_0\,
      Q => \^o_rx_byte\(6),
      R => '0'
    );
\r_RX_Byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[7]_i_1_n_0\,
      Q => \^o_rx_byte\(7),
      R => '0'
    );
r_RX_DV_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA0008"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => r_RX_DV_i_2_n_0,
      I4 => \^o_rx_dv\,
      O => r_RX_DV_i_1_n_0
    );
r_RX_DV_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555FDFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[10]\,
      I1 => r_RX_DV_i_3_n_0,
      I2 => r_RX_DV_i_4_n_0,
      I3 => \r_Clk_Count_reg_n_0_[9]\,
      I4 => \r_Clk_Count_reg_n_0_[8]\,
      I5 => \r_SM_Main_reg_n_0_[1]\,
      O => r_RX_DV_i_2_n_0
    );
r_RX_DV_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[6]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[7]\,
      O => r_RX_DV_i_3_n_0
    );
r_RX_DV_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      I4 => \r_Clk_Count_reg_n_0_[4]\,
      O => r_RX_DV_i_4_n_0
    );
r_RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => r_RX_DV_i_1_n_0,
      Q => \^o_rx_dv\,
      R => '0'
    );
r_RX_Data_R_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => i_RX_Serial,
      Q => r_RX_Data_R,
      R => '0'
    );
r_RX_Data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => r_RX_Data_R,
      Q => r_RX_Data,
      R => '0'
    );
\r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444544444444454"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main[0]_i_2_n_0\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_SM_Main[1]_i_3_n_0\,
      I4 => \r_SM_Main[0]_i_3_n_0\,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_SM_Main[0]_i_1_n_0\
    );
\r_SM_Main[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"31013131"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      I2 => \r_SM_Main_reg_n_0_[0]\,
      I3 => \r_Clk_Count[8]_i_6_n_0\,
      I4 => \r_Clk_Count[8]_i_5_n_0\,
      O => \r_SM_Main[0]_i_2_n_0\
    );
\r_SM_Main[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      O => \r_SM_Main[0]_i_3_n_0\
    );
\r_SM_Main[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050515000500150"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => r_RX_Data,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => \r_SM_Main[1]_i_2_n_0\,
      I5 => \r_SM_Main[1]_i_3_n_0\,
      O => \r_SM_Main[1]_i_1_n_0\
    );
\r_SM_Main[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBAFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[1]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_SM_Main[1]_i_4_n_0\,
      I4 => \r_Clk_Count[8]_i_5_n_0\,
      O => \r_SM_Main[1]_i_2_n_0\
    );
\r_SM_Main[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1110FFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      I2 => r_RX_DV_i_4_n_0,
      I3 => r_RX_DV_i_3_n_0,
      I4 => \r_Clk_Count_reg_n_0_[10]\,
      O => \r_SM_Main[1]_i_3_n_0\
    );
\r_SM_Main[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[9]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      O => \r_SM_Main[1]_i_4_n_0\
    );
\r_SM_Main[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => r_RX_DV_i_2_n_0,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_SM_Main[2]_i_1_n_0\
    );
\r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[0]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[0]\,
      R => '0'
    );
\r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[1]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[1]\,
      R => '0'
    );
\r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[2]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GNSS_Reader_UART_RXmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GNSS_Reader_UART_RXmod_0_0 : entity is "GNSS_Reader_UART_RXmod_0_0,UART_RXmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of GNSS_Reader_UART_RXmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of GNSS_Reader_UART_RXmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of GNSS_Reader_UART_RXmod_0_0 : entity is "UART_RXmod,Vivado 2024.2";
end GNSS_Reader_UART_RXmod_0_0;

architecture STRUCTURE of GNSS_Reader_UART_RXmod_0_0 is
begin
U0: entity work.GNSS_Reader_UART_RXmod_0_0_UART_RXmod
     port map (
      i_RX_Serial => i_RX_Serial,
      o_RX_DV => o_RX_DV,
      o_RX_byte(7 downto 0) => o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
