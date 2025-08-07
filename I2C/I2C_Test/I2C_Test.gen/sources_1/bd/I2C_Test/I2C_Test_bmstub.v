// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module I2C_Test (
  sysclk,
  uart_rxd_out,
  btn0,
  led1,
  led2,
  sda_i,
  scl_i,
  sda_o,
  sda_t,
  scl_o,
  scl_t
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  output led2;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;

  // stub module has no contents

endmodule
