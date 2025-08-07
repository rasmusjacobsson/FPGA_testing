// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module SD_init_test (
  sysclk,
  MISO,
  MOSI,
  btn0,
  SCLK,
  CS,
  uart_rxd_out
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input MISO;
  (* X_INTERFACE_IGNORE = "true" *)
  output MOSI;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output SCLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output CS;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;

  // stub module has no contents

endmodule
