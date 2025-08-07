--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 07:43:46 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target I2C_Test_wrapper.bd
--Design      : I2C_Test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity I2C_Test_wrapper is
  port (
    btn0 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    SDA : inout STD_LOGIC;         -- I2C data line  (physical pin)
    SCL : inout STD_LOGIC;         -- I2C clock line (physical pin)
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end I2C_Test_wrapper;

architecture STRUCTURE of I2C_Test_wrapper is

  -- Internal signals for I2C tri-state (For IOBUF instatiation)
  signal sda_i : STD_LOGIC;
  signal sda_o : STD_LOGIC;
  signal sda_t : STD_LOGIC;
  signal scl_i : STD_LOGIC;
  signal scl_o : STD_LOGIC;
  signal scl_t : STD_LOGIC;
  
  component I2C_Test is
  port (
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC
  );
  end component I2C_Test;
  
begin

I2C_Test_i: component I2C_Test
     port map (
      btn0 => btn0,
      led1 => led1,
      led2 => led2,
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
