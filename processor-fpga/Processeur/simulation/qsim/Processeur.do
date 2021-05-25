onerror {quit -f}
vlib work
vlog -work work Processeur.vo
vlog -work work Processeur.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SCOMP2_vlg_vec_tst
vcd file -direction Processeur.msim.vcd
vcd add -internal SCOMP2_vlg_vec_tst/*
vcd add -internal SCOMP2_vlg_vec_tst/i1/*
add wave /*
run -all
