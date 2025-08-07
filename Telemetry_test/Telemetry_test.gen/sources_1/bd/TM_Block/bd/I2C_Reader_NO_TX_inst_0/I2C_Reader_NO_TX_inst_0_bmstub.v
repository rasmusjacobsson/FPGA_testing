// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module I2C_Reader_NO_TX_inst_0 (
  reset_n,
  sda_i,
  scl_i,
  sysclk,
  sda_o,
  sda_t,
  scl_o,
  scl_t,
  led2,
  I2C_TX_byte,
  I2C_TX_DV,
  i_TX_Done
);

  (* X_INTERFACE_IGNORE = "true" *)
  input reset_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output led2;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]I2C_TX_byte;
  (* X_INTERFACE_IGNORE = "true" *)
  output I2C_TX_DV;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_TX_Done;

  // stub module has no contents

endmodule
