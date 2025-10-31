vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axis_infrastructure_v1_1_1
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axis_broadcaster_v1_1_32

vmap xpm modelsim_lib/msim/xpm
vmap axis_infrastructure_v1_1_1 modelsim_lib/msim/axis_infrastructure_v1_1_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axis_broadcaster_v1_1_32 modelsim_lib/msim/axis_broadcaster_v1_1_32

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl" \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/alhua/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../../Normslize.gen/sources_1/ip/axis_broadcaster_0/hdl/tdata_axis_broadcaster_0.v" \
"../../../../Normslize.gen/sources_1/ip/axis_broadcaster_0/hdl/tuser_axis_broadcaster_0.v" \

vlog -work axis_broadcaster_v1_1_32 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../../Normslize.gen/sources_1/ip/axis_broadcaster_0/hdl/top_axis_broadcaster_0.v" \
"../../../../Normslize.gen/sources_1/ip/axis_broadcaster_0/sim/axis_broadcaster_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

