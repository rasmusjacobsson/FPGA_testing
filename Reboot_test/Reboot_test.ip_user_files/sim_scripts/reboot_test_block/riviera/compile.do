transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/sim/reboot_test_block_fpga_rebooter_0_0.vhd" \
"../../../bd/reboot_test_block/ip/reboot_test_block_reboot_control_0_0/sim/reboot_test_block_reboot_control_0_0.vhd" \
"../../../bd/reboot_test_block/ip/reboot_test_block_UART_TXmod_0_0/sim/reboot_test_block_UART_TXmod_0_0.vhd" \
"../../../bd/reboot_test_block/sim/reboot_test_block.vhd" \


