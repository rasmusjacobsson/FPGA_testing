vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/RTC_test/ip/RTC_test_I2C_RTC_0_0/sim/RTC_test_I2C_RTC_0_0.vhd" \
"../../../bd/RTC_test/ip/RTC_test_I2Cmod_0_0/sim/RTC_test_I2Cmod_0_0.vhd" \
"../../../bd/RTC_test/ip/RTC_test_UART_TXmod_0_0/sim/RTC_test_UART_TXmod_0_0.vhd" \
"../../../bd/RTC_test/sim/RTC_test.vhd" \


