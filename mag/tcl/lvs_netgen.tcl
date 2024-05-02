set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
readnet verilog ../src/project.v $source
readnet spice ../xschem/spice_files/top.spice $source
readnet spice ../xschem/spice_files/oscillator_20MHZ.spice
readnet spice ../xschem/spice_files/oscillator_21MHZ.spice
readnet spice ../xschem/spice_files/inverter.spice
lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
