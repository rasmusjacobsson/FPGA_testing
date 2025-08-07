-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Aug  5 17:07:57 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/GLITCH-Software/FPGA/UART/GNSS_and_UART/GNSS_and_UART.gen/sources_1/bd/Block_Test/ip/Block_Test_MUX_2to1_0_4/Block_Test_MUX_2to1_0_4_stub.vhdl
-- Design      : Block_Test_MUX_2to1_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_Test_MUX_2to1_0_4 is
  Port ( 
    sysclk : in STD_LOGIC;
    sel : in STD_LOGIC;
    i_TX_DV_0 : in STD_LOGIC;
    i_TX_DV_1 : in STD_LOGIC;
    i_TX_Byte_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Byte_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mux_TX_DV_out : out STD_LOGIC;
    mux_TX_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_Test_MUX_2to1_0_4 : entity is "Block_Test_MUX_2to1_0_4,MUX_2to1,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of Block_Test_MUX_2to1_0_4 : entity is "Block_Test_MUX_2to1_0_4,MUX_2to1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MUX_2to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_Test_MUX_2to1_0_4 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_Test_MUX_2to1_0_4 : entity is "module_ref";
end Block_Test_MUX_2to1_0_4;

architecture stub of Block_Test_MUX_2to1_0_4 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,sel,i_TX_DV_0,i_TX_DV_1,i_TX_Byte_0[7:0],i_TX_Byte_1[7:0],mux_TX_DV_out,mux_TX_out[7:0]";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "MUX_2to1,Vivado 2024.2";
begin
end;
