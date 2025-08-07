vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Test/ip/Block_Test_UART_RXmod_0_0/sim/Block_Test_UART_RXmod_0_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_UART_TXmod_0_0/sim/Block_Test_UART_TXmod_0_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_Switchmod_0_0/sim/Block_Test_Switchmod_0_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_UART_TXmod_1_0/sim/Block_Test_UART_TXmod_1_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_UART_TXmod_2_0/sim/Block_Test_UART_TXmod_2_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_UART_RXmod_1_0/sim/Block_Test_UART_RXmod_1_0.vhd" \
"../../../bd/Block_Test/ip/Block_Test_MUX_2to1_0_4/sim/Block_Test_MUX_2to1_0_4.vhd" \
"../../../bd/Block_Test/sim/Block_Test.vhd" \


