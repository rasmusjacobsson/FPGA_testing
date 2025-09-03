--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Sep  3 13:03:13 2025
--Host        : LAPTOP-FQ2KK7JS running 64-bit major release  (build 9200)
--Command     : generate_target RTC_test_wrapper.bd
--Design      : RTC_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RTC_test_wrapper is
  port (
    btn0 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end RTC_test_wrapper;

architecture STRUCTURE of RTC_test_wrapper is
  component RTC_test is
  port (
    scl_i : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    scl_t : out STD_LOGIC
  );
  end component RTC_test;
begin
RTC_test_i: component RTC_test
     port map (
      btn0 => btn0,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
end STRUCTURE;
