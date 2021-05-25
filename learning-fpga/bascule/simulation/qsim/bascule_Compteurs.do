onerror {quit -f}
vlib work
vlog -work work bascule_Compteurs.vo
vlog -work work bascule_Compteurs.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CompteurN_vlg_vec_tst
vcd file -direction bascule_Compteurs.msim.vcd
vcd add -internal CompteurN_vlg_vec_tst/*
vcd add -internal CompteurN_vlg_vec_tst/i1/*
add wave /*
run -all
