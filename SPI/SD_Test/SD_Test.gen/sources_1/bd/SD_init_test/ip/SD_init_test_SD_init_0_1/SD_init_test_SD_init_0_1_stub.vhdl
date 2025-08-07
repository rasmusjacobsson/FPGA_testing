-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Aug  7 12:02:50 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/GLITCH-Software/FPGA/SPI/SD_Test/SD_Test.gen/sources_1/bd/SD_init_test/ip/SD_init_test_SD_init_0_1/SD_init_test_SD_init_0_1_stub.vhdl
-- Design      : SD_init_test_SD_init_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SD_init_test_SD_init_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    cs : out STD_LOGIC;
    done : out STD_LOGIC;
    test_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_DV : out STD_LOGIC;
    test_give_response : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SD_init_test_SD_init_0_1 : entity is "SD_init_test_SD_init_0_1,SD_init,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of SD_init_test_SD_init_0_1 : entity is "SD_init_test_SD_init_0_1,SD_init,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SD_init,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clockfrequency=12000000,Baud_Rate=400000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SD_init_test_SD_init_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SD_init_test_SD_init_0_1 : entity is "module_ref";
end SD_init_test_SD_init_0_1;

architecture stub of SD_init_test_SD_init_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,sck,mosi,miso,cs,done,test_byte[7:0],test_DV,test_give_response";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "SD_init,Vivado 2024.2";
begin
end;
