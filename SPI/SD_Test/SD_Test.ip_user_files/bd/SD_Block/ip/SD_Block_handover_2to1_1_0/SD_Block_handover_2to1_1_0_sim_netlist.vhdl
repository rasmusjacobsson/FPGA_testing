-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Aug  6 12:05:58 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_handover_2to1_1_0/SD_Block_handover_2to1_1_0_sim_netlist.vhdl
-- Design      : SD_Block_handover_2to1_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_handover_2to1_1_0_handover_2to1 is
  port (
    mux_out : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    done0 : in STD_LOGIC;
    done1 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    in0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SD_Block_handover_2to1_1_0_handover_2to1 : entity is "handover_2to1";
end SD_Block_handover_2to1_1_0_handover_2to1;

architecture STRUCTURE of SD_Block_handover_2to1_1_0_handover_2to1 is
  signal State : STD_LOGIC;
  signal State_i_1_n_0 : STD_LOGIC;
  signal done0_prev : STD_LOGIC;
  signal done0_prev_i_1_n_0 : STD_LOGIC;
  signal done1_prev : STD_LOGIC;
  signal done1_prev_i_1_n_0 : STD_LOGIC;
  signal mux_out_i_2_n_0 : STD_LOGIC;
  signal mux_out_i_3_n_0 : STD_LOGIC;
  signal mux_out_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of State_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of done0_prev_i_1 : label is "soft_lutpair0";
begin
State_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0D0DFD0"
    )
        port map (
      I0 => done0,
      I1 => done0_prev,
      I2 => State,
      I3 => done1,
      I4 => done1_prev,
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
done0_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => done0,
      I1 => State,
      I2 => done0_prev,
      O => done0_prev_i_1_n_0
    );
done0_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => done0_prev_i_1_n_0,
      Q => done0_prev,
      R => '0'
    );
done1_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => done1_prev,
      I1 => State,
      I2 => done1,
      O => done1_prev_i_1_n_0
    );
done1_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => done1_prev_i_1_n_0,
      Q => done1_prev,
      R => '0'
    );
mux_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => in0,
      I1 => done1,
      I2 => done1_prev,
      I3 => in1,
      O => mux_out_i_2_n_0
    );
mux_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => in1,
      I1 => done0,
      I2 => done0_prev,
      I3 => in0,
      O => mux_out_i_3_n_0
    );
mux_out_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => mux_out_reg_i_1_n_0,
      Q => mux_out,
      R => '0'
    );
mux_out_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_out_i_2_n_0,
      I1 => mux_out_i_3_n_0,
      O => mux_out_reg_i_1_n_0,
      S => State
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_handover_2to1_1_0 is
  port (
    sysclk : in STD_LOGIC;
    done0 : in STD_LOGIC;
    done1 : in STD_LOGIC;
    in0 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    mux_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SD_Block_handover_2to1_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_Block_handover_2to1_1_0 : entity is "SD_Block_handover_2to1_1_0,handover_2to1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_Block_handover_2to1_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_Block_handover_2to1_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SD_Block_handover_2to1_1_0 : entity is "handover_2to1,Vivado 2024.2";
end SD_Block_handover_2to1_1_0;

architecture STRUCTURE of SD_Block_handover_2to1_1_0 is
begin
U0: entity work.SD_Block_handover_2to1_1_0_handover_2to1
     port map (
      done0 => done0,
      done1 => done1,
      in0 => in0,
      in1 => in1,
      mux_out => mux_out,
      sysclk => sysclk
    );
end STRUCTURE;
