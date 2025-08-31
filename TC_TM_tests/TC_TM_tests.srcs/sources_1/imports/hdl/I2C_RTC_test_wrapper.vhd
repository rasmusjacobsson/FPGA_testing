--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sat Aug 23 17:15:43 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target I2C_RTC_test_wrapper.bd
--Design      : I2C_RTC_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_RTC_test_wrapper is
  port (
    btn0 : in STD_LOGIC;
    SDA : inout STD_LOGIC;         -- I2C data line  (physical pin)
    SCL : inout STD_LOGIC;         -- I2C clock line (physical pin)
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end I2C_RTC_test_wrapper;

architecture STRUCTURE of I2C_RTC_test_wrapper is

  -- Internal signals for I2C tri-state (For IOBUF instatiation)
  signal sda_i : STD_LOGIC;
  signal sda_o : STD_LOGIC;
  signal sda_t : STD_LOGIC;
  signal scl_i : STD_LOGIC;
  signal scl_o : STD_LOGIC;
  signal scl_t : STD_LOGIC;
    

  component I2C_RTC_test is
  port (
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  end component I2C_RTC_test;
begin
I2C_RTC_test_i: component I2C_RTC_test
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
    
  -- Connect physical bidirectional SDA to IOBUF
SDA_iobuf : IOBUF
    port map (
      I  => sda_o,
      O  => sda_i,
      T  => sda_t,
      IO => SDA
    );
    
  -- Connect physical bidirectional SCL to IOBUF
SCL_iobuf : IOBUF
    port map (
      I  => scl_o,
      O  => scl_i,
      T  => scl_t,
      IO => SCL
    );
    
end STRUCTURE;
