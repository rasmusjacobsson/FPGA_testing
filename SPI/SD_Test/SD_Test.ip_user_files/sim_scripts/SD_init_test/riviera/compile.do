transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/SD_init_test/ip/SD_init_test_UART_TXmod_0_0/sim/SD_init_test_UART_TXmod_0_0.vhd" \
"../../../bd/SD_init_test/ip/SD_init_test_SD_init_0_1/sim/SD_init_test_SD_init_0_1.vhd" \
"../../../bd/SD_init_test/sim/SD_init_test.vhd" \


