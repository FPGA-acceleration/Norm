transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+LayerNorm  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.LayerNorm xil_defaultlib.glbl

do {LayerNorm.udo}

run 1000ns

endsim

quit -force
