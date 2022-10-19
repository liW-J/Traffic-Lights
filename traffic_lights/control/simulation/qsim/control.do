onerror {quit -f}
vlib work
vlog -work work control.vo
vlog -work work control.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.control_vlg_vec_tst
vcd file -direction control.msim.vcd
vcd add -internal control_vlg_vec_tst/*
vcd add -internal control_vlg_vec_tst/i1/*
add wave /*
run -all
