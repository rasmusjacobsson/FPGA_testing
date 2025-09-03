vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/RTC_test/ip/RTC_test_I2C_RTC_0_0/sim/RTC_test_I2C_RTC_0_0.vhd" \
"../../../bd/RTC_test/ip/RTC_test_I2Cmod_0_0/sim/RTC_test_I2Cmod_0_0.vhd" \
"../../../bd/RTC_test/ip/RTC_test_UART_TXmod_0_0/sim/RTC_test_UART_TXmod_0_0.vhd" \
"../../../bd/RTC_test/sim/RTC_test.vhd" \


