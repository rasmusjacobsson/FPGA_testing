--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Aug  5 20:07:16 2025
--Host        : DESKTOP-TTFS3R7 running 64-bit major release  (build 9200)
--Command     : generate_target GNSS_Reader_NO_TX_inst_0_wrapper.bd
--Design      : GNSS_Reader_NO_TX_inst_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_NO_TX_inst_0_wrapper is
  port (
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    o_GNSS_RX_BYTE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_GNSS_RX_DV : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end GNSS_Reader_NO_TX_inst_0_wrapper;

architecture STRUCTURE of GNSS_Reader_NO_TX_inst_0_wrapper is
  component GNSS_Reader_NO_TX_inst_0 is
  port (
    sysclk : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    o_GNSS_RX_DV : out STD_LOGIC;
    o_GNSS_RX_BYTE : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component GNSS_Reader_NO_TX_inst_0;
begin
GNSS_Reader_NO_TX_inst_0_i: component GNSS_Reader_NO_TX_inst_0
     port map (
      GNSS_RX => GNSS_RX,
      GNSS_TX => GNSS_TX,
      o_GNSS_RX_BYTE(7 downto 0) => o_GNSS_RX_BYTE(7 downto 0),
      o_GNSS_RX_DV => o_GNSS_RX_DV,
      sysclk => sysclk
    );
end STRUCTURE;
