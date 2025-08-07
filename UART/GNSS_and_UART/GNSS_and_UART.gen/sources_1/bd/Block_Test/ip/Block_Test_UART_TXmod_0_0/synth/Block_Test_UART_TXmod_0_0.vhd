-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:UART_TXmod:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Block_Test_UART_TXmod_0_0 IS
  PORT (
    sysclk : IN STD_LOGIC;
    i_TX_DV : IN STD_LOGIC;
    i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_TX_Active : OUT STD_LOGIC;
    o_TX_Serial : OUT STD_LOGIC;
    o_TX_Done : OUT STD_LOGIC
  );
END Block_Test_UART_TXmod_0_0;

ARCHITECTURE Block_Test_UART_TXmod_0_0_arch OF Block_Test_UART_TXmod_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Block_Test_UART_TXmod_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT UART_TXmod IS
    GENERIC (
      Clockfrequency : INTEGER;
      Baud_Rate : INTEGER
    );
    PORT (
      sysclk : IN STD_LOGIC;
      i_TX_DV : IN STD_LOGIC;
      i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_TX_Active : OUT STD_LOGIC;
      o_TX_Serial : OUT STD_LOGIC;
      o_TX_Done : OUT STD_LOGIC
    );
  END COMPONENT UART_TXmod;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Block_Test_UART_TXmod_0_0_arch: ARCHITECTURE IS "UART_TXmod,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Block_Test_UART_TXmod_0_0_arch : ARCHITECTURE IS "Block_Test_UART_TXmod_0_0,UART_TXmod,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Block_Test_UART_TXmod_0_0_arch: ARCHITECTURE IS "Block_Test_UART_TXmod_0_0,UART_TXmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_TXmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Clockfrequency=12000000,Baud_Rate=115200}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Block_Test_UART_TXmod_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : UART_TXmod
    GENERIC MAP (
      Clockfrequency => 12000000,
      Baud_Rate => 115200
    )
    PORT MAP (
      sysclk => sysclk,
      i_TX_DV => i_TX_DV,
      i_TX_Byte => i_TX_Byte,
      o_TX_Active => o_TX_Active,
      o_TX_Serial => o_TX_Serial,
      o_TX_Done => o_TX_Done
    );
END Block_Test_UART_TXmod_0_0_arch;
