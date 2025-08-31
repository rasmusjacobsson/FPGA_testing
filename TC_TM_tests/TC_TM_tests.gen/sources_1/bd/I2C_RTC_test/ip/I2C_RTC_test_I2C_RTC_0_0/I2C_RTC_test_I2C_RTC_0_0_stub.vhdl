-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Aug 23 17:18:23 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/FPGA_testing/TC_TM_tests/TC_TM_tests.gen/sources_1/bd/I2C_RTC_test/ip/I2C_RTC_test_I2C_RTC_0_0/I2C_RTC_test_I2C_RTC_0_0_stub.vhdl
-- Design      : I2C_RTC_test_I2C_RTC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2C_RTC_test_I2C_RTC_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_done : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RTC_DV : out STD_LOGIC;
    RTC_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2C_RTC_test_I2C_RTC_0_0 : entity is "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of I2C_RTC_test_I2C_RTC_0_0 : entity is "I2C_RTC_test_I2C_RTC_0_0,I2C_RTC,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_RTC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2C_RTC_test_I2C_RTC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2C_RTC_test_I2C_RTC_0_0 : entity is "module_ref";
end I2C_RTC_test_I2C_RTC_0_0;

architecture stub of I2C_RTC_test_I2C_RTC_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,i_busy,i_data_read[7:0],TX_done,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],RTC_DV,RTC_data[7:0]";
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
  attribute x_core_info of stub : architecture is "I2C_RTC,Vivado 2024.2";
begin
end;
