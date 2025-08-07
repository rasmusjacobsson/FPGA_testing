--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:20 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target I2C_Reader_NO_TX_inst_0.bd
--Design      : I2C_Reader_NO_TX_inst_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Reader_NO_TX_inst_0 is
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
  attribute core_generation_info : string;
  attribute core_generation_info of I2C_Reader_NO_TX_inst_0 : entity is "I2C_Reader_NO_TX_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=I2C_Reader_NO_TX_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=D_/Code/GLITCH-Software/FPGA/Telemetry_test/Telemetry_test.srcs/sources_1/bd/I2C_Reader_NO_TX/I2C_Reader_NO_TX.bd,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of I2C_Reader_NO_TX_inst_0 : entity is "I2C_Reader_NO_TX_inst_0.hwdef";
end I2C_Reader_NO_TX_inst_0;

architecture STRUCTURE of I2C_Reader_NO_TX_inst_0 is
  component I2C_Reader_NO_TX_inst_0_I2Cmod_0_0 is
  port (
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    ena : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rw : in STD_LOGIC;
    data_wr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    busy : out STD_LOGIC;
    data_rd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ack_error : out STD_LOGIC
  );
  end component I2C_Reader_NO_TX_inst_0_I2Cmod_0_0;
  component I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led2 : out STD_LOGIC
  );
  end component I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0;
  signal I2Cmod_0_busy : STD_LOGIC;
  signal I2Cmod_0_data_rd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Read_Sensorsmod_0_o_i2c_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Read_Sensorsmod_0_o_i2c_data_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Read_Sensorsmod_0_o_i2c_ena : STD_LOGIC;
  signal Read_Sensorsmod_0_o_i2c_rw : STD_LOGIC;
  signal NLW_I2Cmod_0_ack_error_UNCONNECTED : STD_LOGIC;
begin
I2Cmod_0: component I2C_Reader_NO_TX_inst_0_I2Cmod_0_0
     port map (
      ack_error => NLW_I2Cmod_0_ack_error_UNCONNECTED,
      addr(6 downto 0) => Read_Sensorsmod_0_o_i2c_address(6 downto 0),
      busy => I2Cmod_0_busy,
      data_rd(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      data_wr(7 downto 0) => Read_Sensorsmod_0_o_i2c_data_wr(7 downto 0),
      ena => Read_Sensorsmod_0_o_i2c_ena,
      reset_n => reset_n,
      rw => Read_Sensorsmod_0_o_i2c_rw,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
Read_Sensorsmod_0: component I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0
     port map (
      i_TX_done => i_TX_Done,
      i_busy => I2Cmod_0_busy,
      i_data_read(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      led2 => led2,
      o_TX_DV => I2C_TX_DV,
      o_TX_data(7 downto 0) => I2C_TX_byte(7 downto 0),
      o_i2c_address(6 downto 0) => Read_Sensorsmod_0_o_i2c_address(6 downto 0),
      o_i2c_data_wr(7 downto 0) => Read_Sensorsmod_0_o_i2c_data_wr(7 downto 0),
      o_i2c_ena => Read_Sensorsmod_0_o_i2c_ena,
      o_i2c_rw => Read_Sensorsmod_0_o_i2c_rw,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;
