--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:11 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target TM_Block.bd
--Design      : TM_Block
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TM_Block is
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
  attribute core_generation_info : string;
  attribute core_generation_info of TM_Block : entity is "TM_Block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TM_Block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=2,bdsource=USER,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of TM_Block : entity is "TM_Block.hwdef";
end TM_Block;

architecture STRUCTURE of TM_Block is
  component TM_Block_MUX_2to1_0_0 is
  port (
    sysclk : in STD_LOGIC;
    sel : in STD_LOGIC;
    i_TX_DV_0 : in STD_LOGIC;
    i_TX_DV_1 : in STD_LOGIC;
    i_TX_Byte_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Byte_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mux_TX_DV_out : out STD_LOGIC;
    mux_TX_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component TM_Block_MUX_2to1_0_0;
  component TM_Block_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component TM_Block_UART_TXmod_0_0;
  component TM_Block_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component TM_Block_Switchmod_0_0;
  component TM_Block_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component TM_Block_util_vector_logic_0_0;
  component GNSS_Reader_NO_TX_inst_0 is
  port (
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    o_GNSS_RX_BYTE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_GNSS_RX_DV : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  end component GNSS_Reader_NO_TX_inst_0;
  component I2C_Reader_NO_TX_inst_0 is
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
  end component I2C_Reader_NO_TX_inst_0;
  signal GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal GNSS_Reader_NO_TX_0_o_GNSS_RX_DV : STD_LOGIC;
  signal I2C_Reader_NO_TX_0_I2C_TX_DV : STD_LOGIC;
  signal I2C_Reader_NO_TX_0_I2C_TX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MUX_2to1_0_mux_TX_DV_out : STD_LOGIC;
  signal MUX_2to1_0_mux_TX_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_TX_Done_1 : STD_LOGIC;
  signal reset_n_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
begin
GNSS_Reader_NO_TX_0: component GNSS_Reader_NO_TX_inst_0
     port map (
      GNSS_RX => GNSS_RX,
      GNSS_TX => GNSS_TX,
      o_GNSS_RX_BYTE(7 downto 0) => GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE(7 downto 0),
      o_GNSS_RX_DV => GNSS_Reader_NO_TX_0_o_GNSS_RX_DV,
      sysclk => sysclk
    );
I2C_Reader_NO_TX_0: component I2C_Reader_NO_TX_inst_0
     port map (
      I2C_TX_DV => I2C_Reader_NO_TX_0_I2C_TX_DV,
      I2C_TX_byte(7 downto 0) => I2C_Reader_NO_TX_0_I2C_TX_byte(7 downto 0),
      i_TX_Done => i_TX_Done_1,
      led2 => led1,
      reset_n => reset_n_1(0),
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
MUX_2to1_0: component TM_Block_MUX_2to1_0_0
     port map (
      i_TX_Byte_0(7 downto 0) => I2C_Reader_NO_TX_0_I2C_TX_byte(7 downto 0),
      i_TX_Byte_1(7 downto 0) => GNSS_Reader_NO_TX_0_o_GNSS_RX_BYTE(7 downto 0),
      i_TX_DV_0 => I2C_Reader_NO_TX_0_I2C_TX_DV,
      i_TX_DV_1 => GNSS_Reader_NO_TX_0_o_GNSS_RX_DV,
      mux_TX_DV_out => MUX_2to1_0_mux_TX_DV_out,
      mux_TX_out(7 downto 0) => MUX_2to1_0_mux_TX_out(7 downto 0),
      sel => btn0,
      sysclk => sysclk
    );
Switchmod_0: component TM_Block_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => GNSS_EN,
      sysclk => sysclk
    );
UART_TXmod_0: component TM_Block_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => MUX_2to1_0_mux_TX_out(7 downto 0),
      i_TX_DV => MUX_2to1_0_mux_TX_DV_out,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => i_TX_Done_1,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
util_vector_logic_0: component TM_Block_util_vector_logic_0_0
     port map (
      Op1(0) => btn0,
      Res(0) => reset_n_1(0)
    );
end STRUCTURE;
