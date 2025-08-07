// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module GNSS_Reader_NO_TX_inst_0 (
  sysclk,
  GNSS_TX,
  GNSS_RX,
  o_GNSS_RX_DV,
  o_GNSS_RX_BYTE
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_GNSS_RX_DV;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]o_GNSS_RX_BYTE;

  // stub module has no contents

endmodule
