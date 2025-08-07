-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Apr 13 16:27:35 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0_sim_netlist.vhdl
-- Design      : I2C_Test_UART_TXmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Test_UART_TXmod_0_0_UART_TXmod is
  port (
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_DV : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2C_Test_UART_TXmod_0_0_UART_TXmod : entity is "UART_TXmod";
end I2C_Test_UART_TXmod_0_0_UART_TXmod;

architecture STRUCTURE of I2C_Test_UART_TXmod_0_0_UART_TXmod is
  signal \FSM_sequential_r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \^o_tx_active\ : STD_LOGIC;
  signal o_TX_Active_i_1_n_0 : STD_LOGIC;
  signal \^o_tx_done\ : STD_LOGIC;
  signal \^o_tx_serial\ : STD_LOGIC;
  signal o_TX_Serial_i_1_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_2_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_3_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_4_n_0 : STD_LOGIC;
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal r_Clk_Count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal r_Clk_Count0 : STD_LOGIC;
  signal \r_Clk_Count[6]_i_4_n_0\ : STD_LOGIC;
  signal r_Clk_Count_1 : STD_LOGIC;
  signal r_Clk_Count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal r_SM_Main : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_SM_Main__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_TX_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_TX_Data_0 : STD_LOGIC;
  signal r_TX_Done_i_1_n_0 : STD_LOGIC;
  signal r_TX_Done_i_2_n_0 : STD_LOGIC;
  signal r_TX_Done_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[0]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[1]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[2]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute SOFT_HLUTNM of o_TX_Active_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Clk_Count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Clk_Count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Clk_Count[6]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Clk_Count[6]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_TX_Done_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_TX_Done_i_3 : label is "soft_lutpair1";
begin
  o_TX_Active <= \^o_tx_active\;
  o_TX_Done <= \^o_tx_done\;
  o_TX_Serial <= \^o_tx_serial\;
\FSM_sequential_r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008989DD88"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_TX_Done_i_2_n_0,
      I2 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I3 => i_TX_DV,
      I4 => r_SM_Main(1),
      I5 => r_SM_Main(2),
      O => \r_SM_Main__0\(0)
    );
\FSM_sequential_r_SM_Main[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      O => \FSM_sequential_r_SM_Main[0]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
        port map (
      I0 => r_SM_Main(1),
      I1 => r_TX_Done_i_2_n_0,
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(2),
      O => \r_SM_Main__0\(1)
    );
\FSM_sequential_r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(0),
      I3 => r_TX_Done_i_2_n_0,
      O => \r_SM_Main__0\(2)
    );
\FSM_sequential_r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main__0\(0),
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
      D => \r_SM_Main__0\(1),
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
      D => \r_SM_Main__0\(2),
      Q => r_SM_Main(2),
      R => '0'
    );
o_TX_Active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC04"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(1),
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
o_TX_Serial_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o_tx_serial\,
      I1 => r_SM_Main(2),
      I2 => o_TX_Serial_i_2_n_0,
      O => o_TX_Serial_i_1_n_0
    );
o_TX_Serial_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3131212131213121"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(1),
      I3 => o_TX_Serial_i_3_n_0,
      I4 => o_TX_Serial_i_4_n_0,
      I5 => \r_Bit_Index_reg_n_0_[2]\,
      O => o_TX_Serial_i_2_n_0
    );
o_TX_Serial_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => r_TX_Data(1),
      I1 => r_TX_Data(3),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(0),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(2),
      O => o_TX_Serial_i_3_n_0
    );
o_TX_Serial_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => r_TX_Data(5),
      I1 => r_TX_Data(7),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(4),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(6),
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
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA98AA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => r_TX_Done_i_2_n_0,
      I2 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I3 => r_SM_Main(2),
      I4 => r_SM_Main(1),
      I5 => r_SM_Main(0),
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCC6CC00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => r_TX_Done_i_2_n_0,
      I3 => r_SM_Main(2),
      I4 => r_SM_Main(1),
      I5 => r_SM_Main(0),
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => r_TX_Done_i_2_n_0,
      I2 => \r_Bit_Index[2]_i_2_n_0\,
      I3 => r_SM_Main(2),
      I4 => r_SM_Main(1),
      I5 => r_SM_Main(0),
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
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
      O => r_Clk_Count(0)
    );
\r_Clk_Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      O => r_Clk_Count(1)
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(2),
      O => r_Clk_Count(2)
    );
\r_Clk_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_Clk_Count_reg(1),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(2),
      I4 => r_Clk_Count_reg(3),
      O => r_Clk_Count(3)
    );
\r_Clk_Count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_Clk_Count_reg(2),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(1),
      I4 => r_Clk_Count_reg(3),
      I5 => r_Clk_Count_reg(4),
      O => r_Clk_Count(4)
    );
\r_Clk_Count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => \r_Clk_Count[6]_i_4_n_0\,
      I2 => r_Clk_Count_reg(5),
      O => r_Clk_Count(5)
    );
\r_Clk_Count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(2),
      O => r_Clk_Count0
    );
\r_Clk_Count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(1),
      O => r_Clk_Count_1
    );
\r_Clk_Count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => r_Clk_Count_reg(5),
      I1 => \r_Clk_Count[6]_i_4_n_0\,
      I2 => r_TX_Done_i_2_n_0,
      I3 => r_Clk_Count_reg(6),
      O => r_Clk_Count(6)
    );
\r_Clk_Count[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(2),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(1),
      I4 => r_Clk_Count_reg(3),
      O => \r_Clk_Count[6]_i_4_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_1,
      D => r_Clk_Count(0),
      Q => r_Clk_Count_reg(0),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_Clk_Count_1,
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
      CE => r_Clk_Count_1,
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
      CE => r_Clk_Count_1,
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
      CE => r_Clk_Count_1,
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
      CE => r_Clk_Count_1,
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
      CE => r_Clk_Count_1,
      D => r_Clk_Count(6),
      Q => r_Clk_Count_reg(6),
      R => r_Clk_Count0
    );
\r_TX_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => i_TX_DV,
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      O => r_TX_Data_0
    );
\r_TX_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
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
      CE => r_TX_Data_0,
      D => i_TX_Byte(7),
      Q => r_TX_Data(7),
      R => '0'
    );
r_TX_Done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFC100C"
    )
        port map (
      I0 => r_TX_Done_i_2_n_0,
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      I4 => \^o_tx_done\,
      O => r_TX_Done_i_1_n_0
    );
r_TX_Done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => r_Clk_Count_reg(6),
      I1 => r_Clk_Count_reg(5),
      I2 => r_TX_Done_i_3_n_0,
      O => r_TX_Done_i_2_n_0
    );
r_TX_Done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111111"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(3),
      I2 => r_Clk_Count_reg(0),
      I3 => r_Clk_Count_reg(1),
      I4 => r_Clk_Count_reg(2),
      O => r_TX_Done_i_3_n_0
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
entity I2C_Test_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2C_Test_UART_TXmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2C_Test_UART_TXmod_0_0 : entity is "I2C_Test_UART_TXmod_0_0,UART_TXmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2C_Test_UART_TXmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2C_Test_UART_TXmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2C_Test_UART_TXmod_0_0 : entity is "UART_TXmod,Vivado 2024.2";
end I2C_Test_UART_TXmod_0_0;

architecture STRUCTURE of I2C_Test_UART_TXmod_0_0 is
begin
U0: entity work.I2C_Test_UART_TXmod_0_0_UART_TXmod
     port map (
      i_TX_Byte(7 downto 0) => i_TX_Byte(7 downto 0),
      i_TX_DV => i_TX_DV,
      o_TX_Active => o_TX_Active,
      o_TX_Done => o_TX_Done,
      o_TX_Serial => o_TX_Serial,
      sysclk => sysclk
    );
end STRUCTURE;
