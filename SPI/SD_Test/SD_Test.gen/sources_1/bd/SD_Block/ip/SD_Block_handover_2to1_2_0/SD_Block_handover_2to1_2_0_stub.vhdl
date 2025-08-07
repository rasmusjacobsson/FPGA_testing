-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Aug  6 12:05:57 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_Block/ip/SD_Block_handover_2to1_2_0/SD_Block_handover_2to1_2_0_stub.vhdl
-- Design      : SD_Block_handover_2to1_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SD_Block_handover_2to1_2_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    done0 : in STD_LOGIC;
    done1 : in STD_LOGIC;
    in0 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    mux_out : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_Block_handover_2to1_2_0 : entity is "SD_Block_handover_2to1_2_0,handover_2to1,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of SD_Block_handover_2to1_2_0 : entity is "SD_Block_handover_2to1_2_0,handover_2to1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=handover_2to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_Block_handover_2to1_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_Block_handover_2to1_2_0 : entity is "module_ref";
end SD_Block_handover_2to1_2_0;

architecture stub of SD_Block_handover_2to1_2_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,done0,done1,in0,in1,mux_out";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "handover_2to1,Vivado 2024.2";
begin
end;
