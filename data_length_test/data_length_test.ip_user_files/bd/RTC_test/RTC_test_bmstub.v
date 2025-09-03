// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module RTC_test (
  scl_i,
  sda_i,
  sysclk,
  btn0,
  uart_rxd_out,
  sda_t,
  scl_o,
  sda_o,
  scl_t
);

  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;

  // stub module has no contents

endmodule
