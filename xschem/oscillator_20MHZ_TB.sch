v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 -90 -0 -50 {
lab=VCC}
N -0 50 -0 90 {
lab=VSS}
N 150 -0 240 -0 {
lab=OUT}
C {oscillator_20MHZ.sym} 0 0 0 0 {name=x1}
C {devices/code.sym} -210 147.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -155 287.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 60 255 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 2000n VCC

.control
tran 100p 2000n
write top_tb.raw
.endc

"}
C {devices/lab_wire.sym} 230 0 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 0 80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 0 -70 0 0 {name=p3 sig_type=std_logic lab=VCC}
