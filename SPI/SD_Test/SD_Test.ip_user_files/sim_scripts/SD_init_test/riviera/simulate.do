transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SD_init_test  -L xil_defaultlib -L secureip -O5 xil_defaultlib.SD_init_test

do {SD_init_test.udo}

run 1000ns

endsim

quit -force
