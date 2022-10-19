transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/display/display.vhd}

vcom -93 -work work {C:/Users/86186/Desktop/DQ/traffic design/display/display_vhd_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  display_vhd_tst.vhd

add wave *
view structure
view signals
run 50 sec
