onerror {quit -f}
vlib work
vlog -work work traffic.vo
vlog -work work traffic.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.traffic_vlg_vec_tst
vcd file -direction traffic.msim.vcd
vcd add -internal traffic_vlg_vec_tst/*
vcd add -internal traffic_vlg_vec_tst/i1/*
add wave /*
run -all
