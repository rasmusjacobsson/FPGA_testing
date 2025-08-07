-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Aug  6 15:39:03 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_init_test/ip/SD_init_test_UART_TXmod_0_0/SD_init_test_UART_TXmod_0_0_stub.vhdl
-- Design      : SD_init_test_UART_TXmod_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SD_init_test_UART_TXmod_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_init_test_UART_TXmod_0_0 : entity is "SD_init_test_UART_TXmod_0_0,UART_TXmod,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of SD_init_test_UART_TXmod_0_0 : entity is "SD_init_test_UART_TXmod_0_0,UART_TXmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_TXmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clockfrequency=12000000,Baud_Rate=115200}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_init_test_UART_TXmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_init_test_UART_TXmod_0_0 : entity is "module_ref";
end SD_init_test_UART_TXmod_0_0;

architecture stub of SD_init_test_UART_TXmod_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,i_TX_DV,i_TX_Byte[7:0],o_TX_Active,o_TX_Serial,o_TX_Done";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "UART_TXmod,Vivado 2024.2";
begin
end;
