--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 17:11:04 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target Block_Test_wrapper.bd
--Design      : Block_Test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Test_wrapper is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
end Block_Test_wrapper;

architecture STRUCTURE of Block_Test_wrapper is
  component Block_Test is
  port (
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  end component Block_Test;
begin
Block_Test_i: component Block_Test
     port map (
      GNSS_EN => GNSS_EN,
      GNSS_RX => GNSS_RX,
      GNSS_TX => GNSS_TX,
      btn0 => btn0,
      led0 => led0,
      led1 => led1,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out,
      uart_txd_in => uart_txd_in
    );
end STRUCTURE;
