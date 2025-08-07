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

-- IP VLNV: xilinx.com:module_ref:UART_RXmod:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY GNSS_Reader_UART_RXmod_0_0 IS
  PORT (
    sysclk : IN STD_LOGIC;
    i_RX_Serial : IN STD_LOGIC;
    o_RX_DV : OUT STD_LOGIC;
    o_RX_byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END GNSS_Reader_UART_RXmod_0_0;

ARCHITECTURE GNSS_Reader_UART_RXmod_0_0_arch OF GNSS_Reader_UART_RXmod_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF GNSS_Reader_UART_RXmod_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT UART_RXmod IS
    GENERIC (
      Clockfrequency : INTEGER;
      Baud_Rate : INTEGER
    );
    PORT (
      sysclk : IN STD_LOGIC;
      i_RX_Serial : IN STD_LOGIC;
      o_RX_DV : OUT STD_LOGIC;
      o_RX_byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT UART_RXmod;
BEGIN
  U0 : UART_RXmod
    GENERIC MAP (
      Clockfrequency => 12000000,
      Baud_Rate => 9600
    )
    PORT MAP (
      sysclk => sysclk,
      i_RX_Serial => i_RX_Serial,
      o_RX_DV => o_RX_DV,
      o_RX_byte => o_RX_byte
    );
END GNSS_Reader_UART_RXmod_0_0_arch;
