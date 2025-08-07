--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:11 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target TM_Block_wrapper.bd
--Design      : TM_Block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TM_Block_wrapper is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end TM_Block_wrapper;

architecture STRUCTURE of TM_Block_wrapper is
  component TM_Block is
  port (
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_EN : out STD_LOGIC;
    led0 : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component TM_Block;
begin
TM_Block_i: component TM_Block
     port map (
      GNSS_EN => GNSS_EN,
      GNSS_RX => GNSS_RX,
      GNSS_TX => GNSS_TX,
      btn0 => btn0,
      led0 => led0,
      led1 => led1,
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
