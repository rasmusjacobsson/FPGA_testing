-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr  2 09:23:52 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Sebastian
--               Magnusson/Documents/GitHub/GLITCH-Software/FPGA/UART/UART_Continuation/UART_Continuation.gen/sources_1/bd/Block_Test/ip/Block_Test_Pulsemod_0_0/Block_Test_Pulsemod_0_0_sim_netlist.vhdl}
-- Design      : Block_Test_Pulsemod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Test_Pulsemod_0_0_Pulsemod is
  port (
    o_pulse : out STD_LOGIC;
    i_signal : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_Test_Pulsemod_0_0_Pulsemod : entity is "Pulsemod";
end Block_Test_Pulsemod_0_0_Pulsemod;

architecture STRUCTURE of Block_Test_Pulsemod_0_0_Pulsemod is
  signal Active : STD_LOGIC;
  signal \Counter[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \Counter[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[0]__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[1]__0_n_0\ : STD_LOGIC;
  signal o_pulse_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Counter[0]__0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Counter[1]__0_i_1\ : label is "soft_lutpair0";
begin
Active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_signal,
      CE => '1',
      D => '1',
      Q => Active,
      R => '0'
    );
\Counter[0]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \Counter_reg[0]__0_n_0\,
      I1 => \Counter_reg[1]__0_n_0\,
      I2 => Active,
      O => \Counter[0]__0_i_1_n_0\
    );
\Counter[1]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \Counter_reg[0]__0_n_0\,
      I1 => \Counter_reg[1]__0_n_0\,
      I2 => Active,
      O => \Counter[1]__0_i_1_n_0\
    );
\Counter_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \Counter[0]__0_i_1_n_0\,
      Q => \Counter_reg[0]__0_n_0\,
      R => '0'
    );
\Counter_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \Counter[1]__0_i_1_n_0\,
      Q => \Counter_reg[1]__0_n_0\,
      R => '0'
    );
o_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Active,
      I1 => \Counter_reg[1]__0_n_0\,
      O => o_pulse_i_1_n_0
    );
o_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => o_pulse_i_1_n_0,
      Q => o_pulse,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Test_Pulsemod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_Test_Pulsemod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_Test_Pulsemod_0_0 : entity is "Block_Test_Pulsemod_0_0,Pulsemod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_Test_Pulsemod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_Test_Pulsemod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_Test_Pulsemod_0_0 : entity is "Pulsemod,Vivado 2024.2";
end Block_Test_Pulsemod_0_0;

architecture STRUCTURE of Block_Test_Pulsemod_0_0 is
begin
U0: entity work.Block_Test_Pulsemod_0_0_Pulsemod
     port map (
      i_signal => i_signal,
      o_pulse => o_pulse,
      sysclk => sysclk
    );
end STRUCTURE;
