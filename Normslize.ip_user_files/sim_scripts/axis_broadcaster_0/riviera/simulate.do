transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axis_broadcaster_0  -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_1 -L axis_broadcaster_v1_1_32 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_broadcaster_0 xil_defaultlib.glbl

do {axis_broadcaster_0.udo}

run 1000ns

endsim

quit -force
