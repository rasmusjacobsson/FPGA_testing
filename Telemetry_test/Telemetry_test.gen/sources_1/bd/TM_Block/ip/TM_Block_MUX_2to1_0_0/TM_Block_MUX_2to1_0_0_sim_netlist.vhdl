-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Aug  5 20:19:48 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_MUX_2to1_0_0/TM_Block_MUX_2to1_0_0_sim_netlist.vhdl
-- Design      : TM_Block_MUX_2to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TM_Block_MUX_2to1_0_0_MUX_2to1 is
  port (
    mux_TX_DV_out : out STD_LOGIC;
    mux_TX_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_TX_DV_0 : in STD_LOGIC;
    i_TX_DV_1 : in STD_LOGIC;
    i_TX_Byte_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Byte_1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TM_Block_MUX_2to1_0_0_MUX_2to1 : entity is "MUX_2to1";
end TM_Block_MUX_2to1_0_0_MUX_2to1;

architecture STRUCTURE of TM_Block_MUX_2to1_0_0_MUX_2to1 is
  signal State : STD_LOGIC;
  signal State_i_1_n_0 : STD_LOGIC;
  signal \mux_TX_DV_out__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel_prev : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of State_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mux_TX_DV_out__0\ : label is "soft_lutpair0";
begin
State_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sel,
      I1 => sel_prev,
      I2 => State,
      O => State_i_1_n_0
    );
State_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => State_i_1_n_0,
      Q => State,
      R => '0'
    );
\mux_TX_DV_out__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_DV_0,
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_DV_1,
      O => \mux_TX_DV_out__0_n_0\
    );
mux_TX_DV_out_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \mux_TX_DV_out__0_n_0\,
      Q => mux_TX_DV_out,
      R => '0'
    );
\mux_TX_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(0),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(0),
      O => p_0_in(0)
    );
\mux_TX_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(1),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(1),
      O => p_0_in(1)
    );
\mux_TX_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(2),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(2),
      O => p_0_in(2)
    );
\mux_TX_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(3),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(3),
      O => p_0_in(3)
    );
\mux_TX_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(4),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(4),
      O => p_0_in(4)
    );
\mux_TX_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(5),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(5),
      O => p_0_in(5)
    );
\mux_TX_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(6),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(6),
      O => p_0_in(6)
    );
\mux_TX_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDED8848"
    )
        port map (
      I0 => State,
      I1 => i_TX_Byte_0(7),
      I2 => sel,
      I3 => sel_prev,
      I4 => i_TX_Byte_1(7),
      O => p_0_in(7)
    );
\mux_TX_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(0),
      Q => mux_TX_out(0),
      R => '0'
    );
\mux_TX_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(1),
      Q => mux_TX_out(1),
      R => '0'
    );
\mux_TX_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(2),
      Q => mux_TX_out(2),
      R => '0'
    );
\mux_TX_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(3),
      Q => mux_TX_out(3),
      R => '0'
    );
\mux_TX_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(4),
      Q => mux_TX_out(4),
      R => '0'
    );
\mux_TX_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(5),
      Q => mux_TX_out(5),
      R => '0'
    );
\mux_TX_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(6),
      Q => mux_TX_out(6),
      R => '0'
    );
\mux_TX_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(7),
      Q => mux_TX_out(7),
      R => '0'
    );
sel_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => sel,
      Q => sel_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TM_Block_MUX_2to1_0_0 is
  port (
    sysclk : in STD_LOGIC;
    sel : in STD_LOGIC;
    i_TX_DV_0 : in STD_LOGIC;
    i_TX_DV_1 : in STD_LOGIC;
    i_TX_Byte_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Byte_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mux_TX_DV_out : out STD_LOGIC;
    mux_TX_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TM_Block_MUX_2to1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TM_Block_MUX_2to1_0_0 : entity is "TM_Block_MUX_2to1_0_0,MUX_2to1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TM_Block_MUX_2to1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TM_Block_MUX_2to1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of TM_Block_MUX_2to1_0_0 : entity is "MUX_2to1,Vivado 2024.2";
end TM_Block_MUX_2to1_0_0;

architecture STRUCTURE of TM_Block_MUX_2to1_0_0 is
begin
U0: entity work.TM_Block_MUX_2to1_0_0_MUX_2to1
     port map (
      i_TX_Byte_0(7 downto 0) => i_TX_Byte_0(7 downto 0),
      i_TX_Byte_1(7 downto 0) => i_TX_Byte_1(7 downto 0),
      i_TX_DV_0 => i_TX_DV_0,
      i_TX_DV_1 => i_TX_DV_1,
      mux_TX_DV_out => mux_TX_DV_out,
      mux_TX_out(7 downto 0) => mux_TX_out(7 downto 0),
      sel => sel,
      sysclk => sysclk
    );
end STRUCTURE;
