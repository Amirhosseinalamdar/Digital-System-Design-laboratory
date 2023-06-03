onerror {exit -code 1}
vlib work
vlog -work work HW2.vo
vlog -work work final_test2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.final_vlg_vec_tst -voptargs="+acc"
vcd file -direction HW2.msim.vcd
vcd add -internal final_vlg_vec_tst/*
vcd add -internal final_vlg_vec_tst/i1/*
run -all
quit -f
