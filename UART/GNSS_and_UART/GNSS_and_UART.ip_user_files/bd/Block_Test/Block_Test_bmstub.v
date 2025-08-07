// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Test (
  led0,
  led1,
  sysclk,
  uart_txd_in,
  btn0,
  GNSS_EN,
  GNSS_RX,
  GNSS_TX,
  uart_rxd_out
);

  (* X_INTERFACE_IGNORE = "true" *)
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart_txd_in;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;

  // stub module has no contents

endmodule
