vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/reboot_test_block/ip/reboot_test_block_fpga_rebooter_0_0/sim/reboot_test_block_fpga_rebooter_0_0.vhd" \
"../../../bd/reboot_test_block/ip/reboot_test_block_reboot_control_0_0/sim/reboot_test_block_reboot_control_0_0.vhd" \
"../../../bd/reboot_test_block/ip/reboot_test_block_UART_TXmod_0_0/sim/reboot_test_block_UART_TXmod_0_0.vhd" \
"../../../bd/reboot_test_block/sim/reboot_test_block.vhd" \


