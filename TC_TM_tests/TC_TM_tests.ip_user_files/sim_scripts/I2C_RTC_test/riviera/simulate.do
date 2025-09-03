transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+I2C_RTC_test  -L xil_defaultlib -L secureip -O5 xil_defaultlib.I2C_RTC_test

do {I2C_RTC_test.udo}

run 1000ns

endsim

quit -force
