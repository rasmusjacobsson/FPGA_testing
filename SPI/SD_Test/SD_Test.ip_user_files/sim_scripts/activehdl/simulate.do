transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+TM_Block_wrapper  -L xil_defaultlib -L util_vector_logic_v2_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.TM_Block_wrapper xil_defaultlib.glbl

do {TM_Block_wrapper.udo}

run 1000ns

endsim

quit -force
