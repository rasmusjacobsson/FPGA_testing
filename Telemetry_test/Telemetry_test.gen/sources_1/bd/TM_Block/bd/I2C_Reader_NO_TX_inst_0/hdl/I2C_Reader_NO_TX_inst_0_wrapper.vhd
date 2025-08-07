--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:20 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target I2C_Reader_NO_TX_inst_0_wrapper.bd
--Design      : I2C_Reader_NO_TX_inst_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Reader_NO_TX_inst_0_wrapper is
  port (
    I2C_TX_DV : out STD_LOGIC;
    I2C_TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Done : in STD_LOGIC;
    led2 : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end I2C_Reader_NO_TX_inst_0_wrapper;

architecture STRUCTURE of I2C_Reader_NO_TX_inst_0_wrapper is
  component I2C_Reader_NO_TX_inst_0 is
  port (
    reset_n : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    led2 : out STD_LOGIC;
    I2C_TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I2C_TX_DV : out STD_LOGIC;
    i_TX_Done : in STD_LOGIC
  );
  end component I2C_Reader_NO_TX_inst_0;
begin
I2C_Reader_NO_TX_inst_0_i: component I2C_Reader_NO_TX_inst_0
     port map (
      I2C_TX_DV => I2C_TX_DV,
      I2C_TX_byte(7 downto 0) => I2C_TX_byte(7 downto 0),
      i_TX_Done => i_TX_Done,
      led2 => led2,
      reset_n => reset_n,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
end STRUCTURE;
