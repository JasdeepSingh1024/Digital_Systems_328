onerror {quit -f}
vlib work
vlog -work work lastlab.vo
vlog -work work lastlab.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU1_vlg_vec_tst
vcd file -direction lastlab.msim.vcd
vcd add -internal ALU1_vlg_vec_tst/*
vcd add -internal ALU1_vlg_vec_tst/i1/*
add wave /*
run -all
