transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4

vcom -work xil_defaultlib -93  -incr \
"../../../../../UART/GNSS_and_UART/GNSS_and_UART.srcs/sources_1/new/MUX_2to1.vhd" \
"../../../../../UART/UART_Test/UART_Test.srcs/sources_1/new/UART_TXmod.vhd" \
"../../../../../UART/Read_GNSS/Read_GNSS.srcs/sources_1/new/Switchmod.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/GNSS_Reader_NO_TX_inst_0/ip/GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0/sim/GNSS_Reader_NO_TX_inst_0_UART_RXmod_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/GNSS_Reader_NO_TX_inst_0/ip/GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0/sim/GNSS_Reader_NO_TX_inst_0_UART_TXmod_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/GNSS_Reader_NO_TX_inst_0/sim/GNSS_Reader_NO_TX_inst_0.vhd" \
"../../../../../UART/UART_Test/UART_Test.srcs/sources_1/new/UART_RXmod.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/I2C_Reader_NO_TX_inst_0/ip/I2C_Reader_NO_TX_inst_0_I2Cmod_0_0/sim/I2C_Reader_NO_TX_inst_0_I2Cmod_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/I2C_Reader_NO_TX_inst_0/ip/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0/sim/I2C_Reader_NO_TX_inst_0_Read_Sensorsmod_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/bd/I2C_Reader_NO_TX_inst_0/sim/I2C_Reader_NO_TX_inst_0.vhd" \
"../../../../../I2C/I2C_Test/I2C_Test.srcs/sources_1/new/I2Cmod.vhd" \
"../../../../../I2C/I2C_Test/I2C_Test.srcs/sources_1/new/Read_Sensorsmod.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_MUX_2to1_0_0/sim/TM_Block_MUX_2to1_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_UART_TXmod_0_0/sim/TM_Block_UART_TXmod_0_0.vhd" \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_Switchmod_0_0/sim/TM_Block_Switchmod_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/ip/TM_Block_util_vector_logic_0_0/sim/TM_Block_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../Telemetry_test/Telemetry_test.gen/sources_1/bd/TM_Block/sim/TM_Block.vhd" \
"../../../../../Telemetry_test/Telemetry_test.srcs/sources_1/imports/hdl/TM_Block_wrapper.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

