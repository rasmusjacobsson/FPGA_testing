--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Aug  6 12:45:49 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target SD_Block_wrapper.bd
--Design      : SD_Block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SD_Block_wrapper is
  port (
    CS : out STD_LOGIC;
    MISO : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end SD_Block_wrapper;

architecture STRUCTURE of SD_Block_wrapper is
  component SD_Block is
  port (
    btn0 : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    MISO : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  end component SD_Block;
begin
SD_Block_i: component SD_Block
     port map (
      CS => CS,
      MISO => MISO,
      MOSI => MOSI,
      SCLK => SCLK,
      btn0 => btn0,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
end STRUCTURE;
