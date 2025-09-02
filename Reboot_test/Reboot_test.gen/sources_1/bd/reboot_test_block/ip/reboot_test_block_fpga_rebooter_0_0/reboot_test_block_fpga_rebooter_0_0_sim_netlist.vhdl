-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep  2 15:08:20 2025
-- Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rjaco/Documents/Skolgrejs/FPGA_testing/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/reboot_test_block_fpga_rebooter_0_0_sim_netlist.vhdl
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
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reboot_test_block_fpga_rebooter_0_0_fpga_rebooter : entity is "fpga_rebooter";
end reboot_test_block_fpga_rebooter_0_0_fpga_rebooter;

architecture STRUCTURE of reboot_test_block_fpga_rebooter_0_0_fpga_rebooter is
  signal CSIB : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal icap_ce : STD_LOGIC;
  signal \icap_din[0]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[10]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[11]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[12]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[13]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[14]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[15]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[16]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[17]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[18]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[19]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[20]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[21]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[22]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[23]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[24]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[25]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[26]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[26]_i_2_n_0\ : STD_LOGIC;
  signal \icap_din[27]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[28]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[29]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[2]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[30]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[31]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[3]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[4]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[5]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[7]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \icap_din[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ICAPE2_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "sync:0000001000,noop1:0000010000,dummy2:0000000100,dummy1:0000000010,idle:0000000001,noop2:1000000000,cmd:0010000000,addr:0001000000,iprog:0100000000,wbst:0000100000";
  attribute box_type : string;
  attribute box_type of ICAPE2_0 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of icap_ce_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \icap_din[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \icap_din[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \icap_din[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \icap_din[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \icap_din[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icap_din[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \icap_din[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icap_din[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icap_din[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \icap_din[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \icap_din[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icap_din[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \icap_din[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \icap_din[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \icap_din[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \icap_din[23]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \icap_din[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \icap_din[25]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \icap_din[26]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \icap_din[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \icap_din[28]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \icap_din[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \icap_din[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \icap_din[30]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \icap_din[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \icap_din[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \icap_din[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icap_din[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icap_din[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \icap_din[9]_i_1\ : label is "soft_lutpair3";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => reboot_trigger,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => reboot_trigger,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => '0'
    );
ICAPE2_0: unisim.vcomponents.ICAPE2
    generic map(
      DEVICE_ID => X"03651093",
      ICAP_WIDTH => "X32",
      SIM_CFG_FILE_NAME => "NONE"
    )
        port map (
      CLK => clk,
      CSIB => CSIB,
      I(31 downto 0) => I(31 downto 0),
      O(31 downto 0) => NLW_ICAPE2_0_O_UNCONNECTED(31 downto 0),
      RDWRB => CSIB
    );
icap_ce_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => reboot_trigger,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => icap_ce
    );
icap_ce_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => icap_ce,
      Q => CSIB,
      R => '0'
    );
\icap_din[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[0]_i_1_n_0\
    );
\icap_din[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[10]_i_1_n_0\
    );
\icap_din[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[11]_i_1_n_0\
    );
\icap_din[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[12]_i_1_n_0\
    );
\icap_din[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[13]_i_1_n_0\
    );
\icap_din[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[14]_i_1_n_0\
    );
\icap_din[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[15]_i_1_n_0\
    );
\icap_din[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[16]_i_1_n_0\
    );
\icap_din[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[17]_i_1_n_0\
    );
\icap_din[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[18]_i_1_n_0\
    );
\icap_din[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[19]_i_1_n_0\
    );
\icap_din[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[1]_i_1_n_0\
    );
\icap_din[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[20]_i_1_n_0\
    );
\icap_din[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[21]_i_1_n_0\
    );
\icap_din[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[22]_i_1_n_0\
    );
\icap_din[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \icap_din[23]_i_1_n_0\
    );
\icap_din[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[24]_i_1_n_0\
    );
\icap_din[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[25]_i_1_n_0\
    );
\icap_din[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \icap_din[26]_i_2_n_0\,
      O => \icap_din[26]_i_1_n_0\
    );
\icap_din[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[26]_i_2_n_0\
    );
\icap_din[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \icap_din[27]_i_1_n_0\
    );
\icap_din[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[28]_i_1_n_0\
    );
\icap_din[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[29]_i_1_n_0\
    );
\icap_din[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[2]_i_1_n_0\
    );
\icap_din[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[30]_i_1_n_0\
    );
\icap_din[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[31]_i_1_n_0\
    );
\icap_din[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \icap_din[3]_i_1_n_0\
    );
\icap_din[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[4]_i_1_n_0\
    );
\icap_din[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \icap_din[5]_i_1_n_0\
    );
\icap_din[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \icap_din[6]_i_1_n_0\
    );
\icap_din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \icap_din[7]_i_1_n_0\
    );
\icap_din[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[8]_i_1_n_0\
    );
\icap_din[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \icap_din[9]_i_1_n_0\
    );
\icap_din_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[0]_i_1_n_0\,
      Q => I(0),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[10]_i_1_n_0\,
      Q => I(10),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[11]_i_1_n_0\,
      Q => I(11),
      R => '0'
    );
\icap_din_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[12]_i_1_n_0\,
      Q => I(12),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[13]_i_1_n_0\,
      Q => I(13),
      R => '0'
    );
\icap_din_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[14]_i_1_n_0\,
      Q => I(14),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[15]_i_1_n_0\,
      Q => I(15),
      R => '0'
    );
\icap_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[16]_i_1_n_0\,
      Q => I(16),
      R => '0'
    );
\icap_din_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[17]_i_1_n_0\,
      Q => I(17),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[18]_i_1_n_0\,
      Q => I(18),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[19]_i_1_n_0\,
      Q => I(19),
      R => '0'
    );
\icap_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[1]_i_1_n_0\,
      Q => I(1),
      R => '0'
    );
\icap_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[20]_i_1_n_0\,
      Q => I(20),
      R => '0'
    );
\icap_din_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[21]_i_1_n_0\,
      Q => I(21),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[22]_i_1_n_0\,
      Q => I(22),
      R => '0'
    );
\icap_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[23]_i_1_n_0\,
      Q => I(23),
      R => '0'
    );
\icap_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[24]_i_1_n_0\,
      Q => I(24),
      R => '0'
    );
\icap_din_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[25]_i_1_n_0\,
      Q => I(25),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[26]_i_1_n_0\,
      Q => I(26),
      R => '0'
    );
\icap_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[27]_i_1_n_0\,
      Q => I(27),
      R => '0'
    );
\icap_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[28]_i_1_n_0\,
      Q => I(28),
      R => '0'
    );
\icap_din_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[29]_i_1_n_0\,
      Q => I(29),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[2]_i_1_n_0\,
      Q => I(2),
      R => '0'
    );
\icap_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[30]_i_1_n_0\,
      Q => I(30),
      R => '0'
    );
\icap_din_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[31]_i_1_n_0\,
      Q => I(31),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[3]_i_1_n_0\,
      Q => I(3),
      S => \FSM_onehot_state_reg_n_0_[1]\
    );
\icap_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[4]_i_1_n_0\,
      Q => I(4),
      R => '0'
    );
\icap_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[5]_i_1_n_0\,
      Q => I(5),
      R => '0'
    );
\icap_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[6]_i_1_n_0\,
      Q => I(6),
      R => '0'
    );
\icap_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[7]_i_1_n_0\,
      Q => I(7),
      R => '0'
    );
\icap_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[8]_i_1_n_0\,
      Q => I(8),
      R => '0'
    );
\icap_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \icap_din[9]_i_1_n_0\,
      Q => I(9),
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
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  led0 <= \<const0>\;
  led1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.reboot_test_block_fpga_rebooter_0_0_fpga_rebooter
     port map (
      clk => clk,
      reboot_trigger => reboot_trigger
    );
end STRUCTURE;
