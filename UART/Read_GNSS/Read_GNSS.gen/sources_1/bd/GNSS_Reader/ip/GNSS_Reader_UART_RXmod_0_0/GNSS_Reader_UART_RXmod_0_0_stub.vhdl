-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Apr  7 09:53:29 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/UART/Read_GNSS/Read_GNSS.gen/sources_1/bd/GNSS_Reader/ip/GNSS_Reader_UART_RXmod_0_0/GNSS_Reader_UART_RXmod_0_0_stub.vhdl
-- Design      : GNSS_Reader_UART_RXmod_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GNSS_Reader_UART_RXmod_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GNSS_Reader_UART_RXmod_0_0 : entity is "GNSS_Reader_UART_RXmod_0_0,UART_RXmod,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of GNSS_Reader_UART_RXmod_0_0 : entity is "GNSS_Reader_UART_RXmod_0_0,UART_RXmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_RXmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000,Baud_Rate=9600}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of GNSS_Reader_UART_RXmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of GNSS_Reader_UART_RXmod_0_0 : entity is "module_ref";
end GNSS_Reader_UART_RXmod_0_0;

architecture stub of GNSS_Reader_UART_RXmod_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,i_RX_Serial,o_RX_DV,o_RX_byte[7:0]";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "UART_RXmod,Vivado 2024.2";
begin
end;
