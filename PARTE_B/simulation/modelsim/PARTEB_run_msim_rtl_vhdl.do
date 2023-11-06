transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Desktop/GUIA_FPGA/PARTE_B/FFD.vhd}

vcom -93 -work work {C:/Users/Usuario/Desktop/GUIA_FPGA/PARTE_B/sumador_completo_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sumador_completo_tb

add wave *
view structure
view signals
run 40 ns
