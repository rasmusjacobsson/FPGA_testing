transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/I2C_RTC_test/ip/I2C_RTC_test_I2C_RTC_0_0/sim/I2C_RTC_test_I2C_RTC_0_0.vhd" \
"../../../bd/I2C_RTC_test/ip/I2C_RTC_test_UART_TXmod_0_0/sim/I2C_RTC_test_UART_TXmod_0_0.vhd" \
"../../../bd/I2C_RTC_test/ip/I2C_RTC_test_I2Cmod_0_1/sim/I2C_RTC_test_I2Cmod_0_1.vhd" \
"../../../bd/I2C_RTC_test/sim/I2C_RTC_test.vhd" \


