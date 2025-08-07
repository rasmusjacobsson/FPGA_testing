// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module GNSS_Reader (
  sysclk,
  GNSS_TX,
  GNSS_RX,
  uart_rxd_out,
  btn0,
  GNSS_EN,
  led0
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output led0;

  // stub module has no contents

endmodule
