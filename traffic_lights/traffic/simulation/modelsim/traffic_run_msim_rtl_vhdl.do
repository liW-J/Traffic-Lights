transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/traffic/time.vhd}
vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/traffic/control.vhd}
vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/traffic/display.vhd}

vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/traffic/traffic_vhd_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  traffic_vhd_tst

add wave *
view structure
view signals
run 150 sec
