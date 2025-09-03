transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+RTC_test  -L xil_defaultlib -L secureip -O5 xil_defaultlib.RTC_test

do {RTC_test.udo}

run 1000ns

endsim

quit -force
