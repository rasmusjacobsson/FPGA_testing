-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Aug  7 18:36:39 2025
-- Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/GLITCH-Software/FPGA/Reboot_test/Reboot_test.gen/sources_1/bd/reboot_test_block/ip/reboot_test_block_reboot_control_0_0/reboot_test_block_reboot_control_0_0_sim_netlist.vhdl
-- Design      : reboot_test_block_reboot_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reboot_test_block_reboot_control_0_0_reboot_control is
  port (
    TX_byte : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reboot_test_block_reboot_control_0_0_reboot_control : entity is "reboot_control";
end reboot_test_block_reboot_control_0_0_reboot_control;

architecture STRUCTURE of reboot_test_block_reboot_control_0_0_reboot_control is
  signal TX_DV_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
begin
TX_DV_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state,
      O => TX_DV_i_1_n_0
    );
TX_DV_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => TX_DV_i_1_n_0,
      Q => TX_byte(0),
      R => '0'
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => state,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reboot_test_block_reboot_control_0_0 is
  port (
    clk : in STD_LOGIC;
    TX_DV : out STD_LOGIC;
    TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of reboot_test_block_reboot_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of reboot_test_block_reboot_control_0_0 : entity is "reboot_test_block_reboot_control_0_0,reboot_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of reboot_test_block_reboot_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of reboot_test_block_reboot_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of reboot_test_block_reboot_control_0_0 : entity is "reboot_control,Vivado 2024.2";
end reboot_test_block_reboot_control_0_0;

architecture STRUCTURE of reboot_test_block_reboot_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^tx_byte\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  TX_DV <= \^tx_byte\(7);
  TX_byte(7) <= \^tx_byte\(7);
  TX_byte(6) <= \<const0>\;
  TX_byte(5) <= \^tx_byte\(7);
  TX_byte(4) <= \<const0>\;
  TX_byte(3) <= \^tx_byte\(7);
  TX_byte(2) <= \<const0>\;
  TX_byte(1) <= \^tx_byte\(7);
  TX_byte(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.reboot_test_block_reboot_control_0_0_reboot_control
     port map (
      TX_byte(0) => \^tx_byte\(7),
      clk => clk
    );
end STRUCTURE;
