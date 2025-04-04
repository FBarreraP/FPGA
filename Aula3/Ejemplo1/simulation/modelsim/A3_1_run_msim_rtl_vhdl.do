transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/Meu Drive/FPGA/Aula3/Ejemplo1/A3_1.vhd}

vcom -93 -work work {G:/Meu Drive/FPGA/Aula3/Ejemplo1/A3_1_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  A3_1_tb

add wave *
view structure
view signals
run -all
