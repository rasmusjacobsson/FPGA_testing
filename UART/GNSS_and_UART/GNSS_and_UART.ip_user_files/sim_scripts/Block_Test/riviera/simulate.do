transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Block_Test  -L xil_defaultlib -L secureip -O5 xil_defaultlib.Block_Test

do {Block_Test.udo}

run 1000ns

endsim

quit -force
