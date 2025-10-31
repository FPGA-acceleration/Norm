vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/LayerNorm/ip/LayerNorm_process_mean_top_0_0/sim/LayerNorm_process_mean_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_accumulator_0_0/sim/LayerNorm_accumulator_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_rms_sum_0_0/sim/LayerNorm_cal_rms_sum_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_var_top_0_0/sim/LayerNorm_cal_var_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_axis_broadcaster_top_0_0/sim/LayerNorm_axis_broadcaster_top_0_0.v" \
"../../../bd/LayerNorm/ip/LayerNorm_cal_norm_top_0_0/sim/LayerNorm_cal_norm_top_0_0.v" \
"../../../bd/LayerNorm/sim/LayerNorm.v" \

vlog -work xil_defaultlib \
"glbl.v"

