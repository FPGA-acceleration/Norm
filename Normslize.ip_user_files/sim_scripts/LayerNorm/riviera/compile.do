transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xil_defaultlib \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib \
"../../../bd/LayerNorm/ip/LayerNorm_process_mean_top_0_0/sim/LayerNorm_process_mean_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_accumulator_0_0/sim/LayerNorm_accumulator_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_rms_sum_0_0/sim/LayerNorm_cal_rms_sum_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_var_top_0_0/sim/LayerNorm_cal_var_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_axis_broadcaster_top_0_0/sim/LayerNorm_axis_broadcaster_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_norm_top_0_0/sim/LayerNorm_cal_norm_top_0_0.v" \
"../../../bd/LayerNorm/sim/LayerNorm.v" \

vlog -work xil_defaultlib \
"glbl.v"

