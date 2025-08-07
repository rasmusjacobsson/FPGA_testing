-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Apr  7 09:53:29 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/UART/Read_GNSS/Read_GNSS.gen/sources_1/bd/GNSS_Reader/ip/GNSS_Reader_UART_TXmod_0_0/GNSS_Reader_UART_TXmod_0_0_sim_netlist.vhdl
-- Design      : GNSS_Reader_UART_TXmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_UART_TXmod_0_0_UART_TXmod is
  port (
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GNSS_Reader_UART_TXmod_0_0_UART_TXmod : entity is "UART_TXmod";
end GNSS_Reader_UART_TXmod_0_0_UART_TXmod;

architecture STRUCTURE of GNSS_Reader_UART_TXmod_0_0_UART_TXmod is
  signal \FSM_sequential_r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \^o_tx_active\ : STD_LOGIC;
  signal o_TX_Active_i_1_n_0 : STD_LOGIC;
  signal \^o_tx_done\ : STD_LOGIC;
  signal \^o_tx_serial\ : STD_LOGIC;
  signal o_TX_Serial_i_1_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_3_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_4_n_0 : STD_LOGIC;
  signal o_TX_Serial_reg_i_2_n_0 : STD_LOGIC;
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal r_Clk_Count : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal r_Clk_Count0 : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[10]_i_4_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_2_n_0\ : STD_LOGIC;
  signal r_Clk_Count_0 : STD_LOGIC;
  signal r_Clk_Count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal r_SM_Main : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_TX_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_TX_Data_1 : STD_LOGIC;
  signal r_TX_Done_i_1_n_0 : STD_LOGIC;
  signal r_TX_Done_i_2_n_0 : STD_LOGIC;
  signal r_TX_Done_i_3_n_0 : STD_LOGIC;
  signal r_TX_Done_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[0]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[1]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[2]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute SOFT_HLUTNM of o_TX_Active_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_TX_Serial_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Clk_Count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Clk_Count[10]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Clk_Count[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Clk_Count[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_Clk_Count[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Clk_Count[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Clk_Count[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Clk_Count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_TX_Done_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of r_TX_Done_i_3 : label is "soft_lutpair1";
begin
  o_TX_Active <= \^o_tx_active\;
  o_TX_Done <= \^o_tx_done\;
  o_TX_Serial <= \^o_tx_serial\;
\FSM_sequential_r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0E2C3E2"
    )
        port map (
      I0 => i_TX_DV,
      I1 => r_SM_Main(0),
      I2 => r_TX_Done_i_2_n_0,
      I3 => r_SM_Main(1),
      I4 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I5 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[0]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      O => \FSM_sequential_r_SM_Main[0]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_TX_Done_i_2_n_0,
      I2 => r_SM_Main(1),
      I3 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[1]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_TX_Done_i_2_n_0,
      I2 => r_SM_Main(1),
      I3 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[2]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[0]_i_1_n_0\,
      Q => r_SM_Main(0),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[1]_i_1_n_0\,
      Q => r_SM_Main(1),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[2]_i_1_n_0\,
      Q => r_SM_Main(2),
      R => '0'
    );
o_TX_Active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA10"
    )
        port map (
      I0 => r_SM_Main(1),
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(0),
      I3 => \^o_tx_active\,
      O => o_TX_Active_i_1_n_0
    );
o_TX_Active_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => o_TX_Active_i_1_n_0,
      Q => \^o_tx_active\,
      R => '0'
    );
o_TX_Serial_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8BB88B"
    )
        port map (
      I0 => \^o_tx_serial\,
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      I4 => o_TX_Serial_reg_i_2_n_0,
      O => o_TX_Serial_i_1_n_0
    );
o_TX_Serial_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Data(3),
      I1 => r_TX_Data(2),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(1),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(0),
      O => o_TX_Serial_i_3_n_0
    );
o_TX_Serial_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Data(7),
      I1 => r_TX_Data(6),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(5),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(4),
      O => o_TX_Serial_i_4_n_0
    );
o_TX_Serial_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => o_TX_Serial_i_1_n_0,
      Q => \^o_tx_serial\,
      R => '0'
    );
o_TX_Serial_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => o_TX_Serial_i_3_n_0,
      I1 => o_TX_Serial_i_4_n_0,
      O => o_TX_Serial_reg_i_2_n_0,
      S => \r_Bit_Index_reg_n_0_[2]\
    );
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA98AAAAAA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => r_TX_Done_i_2_n_0,
      I2 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I3 => r_SM_Main(2),
      I4 => r_SM_Main(0),
      I5 => r_SM_Main(1),
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => r_TX_Done_i_2_n_0,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index[2]_i_2_n_0\,
      I4 => r_SM_Main(1),
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AAAAAAA0000"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => r_TX_Done_i_2_n_0,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[1]\,
      I4 => \r_Bit_Index[2]_i_2_n_0\,
      I5 => r_SM_Main(1),
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(0),
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
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_Clk_Count_reg(0),
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_SM_Main(1),
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      O => r_Clk_Count0
    );
\r_Clk_Count[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(0),
      O => r_Clk_Count_0
    );
\r_Clk_Count[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => r_Clk_Count_reg(10),
      I1 => r_Clk_Count_reg(9),
      I2 => \r_Clk_Count[10]_i_4_n_0\,
      I3 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(10)
    );
\r_Clk_Count[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r_Clk_Count_reg(8),
      I1 => r_Clk_Count_reg(6),
      I2 => \r_Clk_Count[9]_i_2_n_0\,
      I3 => r_Clk_Count_reg(7),
      O => \r_Clk_Count[10]_i_4_n_0\
    );
\r_Clk_Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => r_Clk_Count_reg(1),
      I1 => r_Clk_Count_reg(0),
      I2 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(1)
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => r_Clk_Count_reg(2),
      I1 => r_Clk_Count_reg(1),
      I2 => r_Clk_Count_reg(0),
      I3 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(2)
    );
\r_Clk_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => r_Clk_Count_reg(3),
      I1 => r_Clk_Count_reg(2),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(1),
      I4 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(3)
    );
\r_Clk_Count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(3),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(0),
      I4 => r_Clk_Count_reg(2),
      I5 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(4)
    );
\r_Clk_Count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => r_Clk_Count_reg(5),
      I1 => \r_Clk_Count[5]_i_2_n_0\,
      I2 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(5)
    );
\r_Clk_Count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(2),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(1),
      I4 => r_Clk_Count_reg(3),
      O => \r_Clk_Count[5]_i_2_n_0\
    );
\r_Clk_Count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => r_Clk_Count_reg(6),
      I1 => \r_Clk_Count[9]_i_2_n_0\,
      I2 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(6)
    );
\r_Clk_Count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => r_Clk_Count_reg(7),
      I1 => r_Clk_Count_reg(6),
      I2 => \r_Clk_Count[9]_i_2_n_0\,
      I3 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(7)
    );
\r_Clk_Count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => r_Clk_Count_reg(8),
      I1 => r_Clk_Count_reg(7),
      I2 => \r_Clk_Count[9]_i_2_n_0\,
      I3 => r_Clk_Count_reg(6),
      I4 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(8)
    );
\r_Clk_Count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => r_Clk_Count_reg(9),
      I1 => r_Clk_Count_reg(8),
      I2 => r_Clk_Count_reg(6),
      I3 => \r_Clk_Count[9]_i_2_n_0\,
      I4 => r_Clk_Count_reg(7),
      I5 => r_TX_Done_i_2_n_0,
      O => r_Clk_Count(9)
    );
\r_Clk_Count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => r_Clk_Count_reg(5),
      I1 => r_Clk_Count_reg(3),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(0),
      I4 => r_Clk_Count_reg(2),
      I5 => r_Clk_Count_reg(4),
      O => \r_Clk_Count[9]_i_2_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => r_Clk_Count_reg(0),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(10),
      Q => r_Clk_Count_reg(10),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(1),
      Q => r_Clk_Count_reg(1),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(2),
      Q => r_Clk_Count_reg(2),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(3),
      Q => r_Clk_Count_reg(3),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(4),
      Q => r_Clk_Count_reg(4),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(5),
      Q => r_Clk_Count_reg(5),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(6),
      Q => r_Clk_Count_reg(6),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(7),
      Q => r_Clk_Count_reg(7),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(8),
      Q => r_Clk_Count_reg(8),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(9),
      Q => r_Clk_Count_reg(9),
      R => r_Clk_Count0
    );
\r_TX_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(2),
      I2 => i_TX_DV,
      I3 => r_SM_Main(1),
      O => r_TX_Data_1
    );
\r_TX_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(0),
      Q => r_TX_Data(0),
      R => '0'
    );
\r_TX_Data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(1),
      Q => r_TX_Data(1),
      R => '0'
    );
\r_TX_Data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(2),
      Q => r_TX_Data(2),
      R => '0'
    );
\r_TX_Data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(3),
      Q => r_TX_Data(3),
      R => '0'
    );
\r_TX_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(4),
      Q => r_TX_Data(4),
      R => '0'
    );
\r_TX_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(5),
      Q => r_TX_Data(5),
      R => '0'
    );
\r_TX_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(6),
      Q => r_TX_Data(6),
      R => '0'
    );
\r_TX_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_1,
      D => i_TX_Byte(7),
      Q => r_TX_Data(7),
      R => '0'
    );
r_TX_Done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFA100A"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_TX_Done_i_2_n_0,
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      I4 => \^o_tx_done\,
      O => r_TX_Done_i_1_n_0
    );
r_TX_Done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011FFFF"
    )
        port map (
      I0 => r_Clk_Count_reg(8),
      I1 => r_Clk_Count_reg(9),
      I2 => r_TX_Done_i_3_n_0,
      I3 => r_TX_Done_i_4_n_0,
      I4 => r_Clk_Count_reg(10),
      O => r_TX_Done_i_2_n_0
    );
r_TX_Done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => r_Clk_Count_reg(3),
      I1 => r_Clk_Count_reg(4),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(2),
      I4 => r_Clk_Count_reg(0),
      O => r_TX_Done_i_3_n_0
    );
r_TX_Done_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_Clk_Count_reg(5),
      I1 => r_Clk_Count_reg(7),
      I2 => r_Clk_Count_reg(6),
      O => r_TX_Done_i_4_n_0
    );
r_TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => r_TX_Done_i_1_n_0,
      Q => \^o_tx_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GNSS_Reader_UART_TXmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GNSS_Reader_UART_TXmod_0_0 : entity is "GNSS_Reader_UART_TXmod_0_0,UART_TXmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of GNSS_Reader_UART_TXmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of GNSS_Reader_UART_TXmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of GNSS_Reader_UART_TXmod_0_0 : entity is "UART_TXmod,Vivado 2024.2";
end GNSS_Reader_UART_TXmod_0_0;

architecture STRUCTURE of GNSS_Reader_UART_TXmod_0_0 is
begin
U0: entity work.GNSS_Reader_UART_TXmod_0_0_UART_TXmod
     port map (
      i_TX_Byte(7 downto 0) => i_TX_Byte(7 downto 0),
      i_TX_DV => i_TX_DV,
      o_TX_Active => o_TX_Active,
      o_TX_Done => o_TX_Done,
      o_TX_Serial => o_TX_Serial,
      sysclk => sysclk
    );
end STRUCTURE;
