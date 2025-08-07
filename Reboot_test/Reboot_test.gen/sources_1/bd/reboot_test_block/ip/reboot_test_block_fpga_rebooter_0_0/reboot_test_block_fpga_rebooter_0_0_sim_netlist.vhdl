-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Aug  7 19:06:55 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_sim_netlist.vhdl
-- Design      : reboot_test_block_fpga_rebooter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reboot_test_block_fpga_rebooter_0_0_fpga_rebooter is
  port (
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reboot_test_block_fpga_rebooter_0_0_fpga_rebooter : entity is "fpga_rebooter";
end reboot_test_block_fpga_rebooter_0_0_fpga_rebooter;

architecture STRUCTURE of reboot_test_block_fpga_rebooter_0_0_fpga_rebooter is
  signal CSIB : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RDWRB : STD_LOGIC;
  signal icap_csib_i_1_n_0 : STD_LOGIC;
  signal \icap_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \icap_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \icap_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \icap_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \icap_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \icap_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \icap_i__0\ : STD_LOGIC;
  signal icap_rdwrb_i_1_n_0 : STD_LOGIC;
  signal \led0__0_n_0\ : STD_LOGIC;
  signal \led1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state_n_0 : STD_LOGIC;
  signal trigger_d : STD_LOGIC;
  signal NLW_ICAP_INST_O_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ICAP_INST : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of icap_csib_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \icap_i[29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \icap_i[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icap_i[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \icap_i[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \icap_i[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of icap_rdwrb_i_1 : label is "soft_lutpair0";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(0),
      O => \state__0__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \state__0__0\(3)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_n_0,
      D => \state__0__0\(0),
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_n_0,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_n_0,
      D => \state__0__0\(3),
      Q => \state__0\(3),
      R => '0'
    );
ICAP_INST: unisim.vcomponents.ICAPE2
    generic map(
      DEVICE_ID => X"03651093",
      ICAP_WIDTH => "X32",
      SIM_CFG_FILE_NAME => "NONE"
    )
        port map (
      CLK => clk,
      CSIB => CSIB,
      I(31 downto 0) => I(31 downto 0),
      O(31 downto 0) => NLW_ICAP_INST_O_UNCONNECTED(31 downto 0),
      RDWRB => RDWRB
    );
icap_csib_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => CSIB,
      O => icap_csib_i_1_n_0
    );
icap_csib_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => icap_csib_i_1_n_0,
      Q => CSIB,
      R => '0'
    );
icap_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1554"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \state__0\(0),
      O => \icap_i__0\
    );
\icap_i[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \icap_i[29]_i_1_n_0\
    );
\icap_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      O => \icap_i[2]_i_1_n_0\
    );
\icap_i[30]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(1),
      O => \icap_i[30]_i_1_n_0\
    );
\icap_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004C"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      O => \icap_i[31]_i_1_n_0\
    );
\icap_i[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \icap_i[31]_i_2_n_0\
    );
\icap_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      O => \icap_i[3]_i_1_n_0\
    );
\icap_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[3]_i_1_n_0\,
      Q => I(0),
      R => '0'
    );
\icap_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(10),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(11),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(12),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(13),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(14),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(15),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(16),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(17),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(18),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(19),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[2]_i_1_n_0\,
      Q => I(1),
      R => '0'
    );
\icap_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(20),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(21),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(22),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(23),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(24),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(25),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(26),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(27),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(28),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[29]_i_1_n_0\,
      Q => I(29),
      R => '0'
    );
\icap_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[2]_i_1_n_0\,
      Q => I(2),
      R => '0'
    );
\icap_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(30),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(31),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[3]_i_1_n_0\,
      Q => I(3),
      R => '0'
    );
\icap_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(4),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(5),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(6),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(7),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[31]_i_2_n_0\,
      Q => I(8),
      R => \icap_i[31]_i_1_n_0\
    );
\icap_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \icap_i__0\,
      D => \icap_i[30]_i_1_n_0\,
      Q => I(9),
      R => \icap_i[31]_i_1_n_0\
    );
icap_rdwrb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => RDWRB,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(3),
      O => icap_rdwrb_i_1_n_0
    );
icap_rdwrb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => icap_rdwrb_i_1_n_0,
      Q => RDWRB,
      R => '0'
    );
\led0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF4"
    )
        port map (
      I0 => trigger_d,
      I1 => reboot_trigger,
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(3),
      I5 => \state__0\(0),
      O => \led0__0_n_0\
    );
led0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led0__0_n_0\,
      Q => led0,
      R => '0'
    );
\led1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555501000101"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => trigger_d,
      I4 => reboot_trigger,
      I5 => \state__0\(0),
      O => \led1__0_n_0\
    );
led1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led1__0_n_0\,
      Q => led1,
      R => '0'
    );
state: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555545554"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => trigger_d,
      I5 => reboot_trigger,
      O => state_n_0
    );
trigger_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => reboot_trigger,
      Q => trigger_d,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reboot_test_block_fpga_rebooter_0_0 is
  port (
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of reboot_test_block_fpga_rebooter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of reboot_test_block_fpga_rebooter_0_0 : entity is "reboot_test_block_fpga_rebooter_0_0,fpga_rebooter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of reboot_test_block_fpga_rebooter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of reboot_test_block_fpga_rebooter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of reboot_test_block_fpga_rebooter_0_0 : entity is "fpga_rebooter,Vivado 2024.2";
end reboot_test_block_fpga_rebooter_0_0;

architecture STRUCTURE of reboot_test_block_fpga_rebooter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.reboot_test_block_fpga_rebooter_0_0_fpga_rebooter
     port map (
      clk => clk,
      led0 => led0,
      led1 => led1,
      reboot_trigger => reboot_trigger
    );
end STRUCTURE;
