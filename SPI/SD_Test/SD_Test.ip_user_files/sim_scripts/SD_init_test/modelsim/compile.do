vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/SD_init_test/ip/SD_init_test_UART_TXmod_0_0/sim/SD_init_test_UART_TXmod_0_0.vhd" \
"../../../bd/SD_init_test/ip/SD_init_test_SD_init_0_1/sim/SD_init_test_SD_init_0_1.vhd" \
"../../../bd/SD_init_test/sim/SD_init_test.vhd" \


