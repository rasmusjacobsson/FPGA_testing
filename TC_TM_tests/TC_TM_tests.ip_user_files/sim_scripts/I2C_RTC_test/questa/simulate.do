onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib I2C_RTC_test_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {I2C_RTC_test.udo}

run 1000ns

quit -force
