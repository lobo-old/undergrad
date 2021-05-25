onerror {quit -f}
vlib work
vlog -work work chronometre.vo
vlog -work work chronometre.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Compteur16_vlg_vec_tst
vcd file -direction chronometre.msim.vcd
vcd add -internal Compteur16_vlg_vec_tst/*
vcd add -internal Compteur16_vlg_vec_tst/i1/*
add wave /*
run -all
