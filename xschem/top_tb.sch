v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -60 290 -0 {
lab=VSS}
N 290 -230 290 -180 {
lab=VCC}
N 440 -130 520 -130 {
lab=OUTA}
N 440 -110 520 -110 {
lab=xxx}
C {devices/iopin.sym} -155 -60 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -155 -35 0 0 {name=p2 lab=VSS}
C {devices/code.sym} 20 47.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 75 187.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 290 155 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 200n VCC

.control
tran 100p 200n
write top_tb.raw
.endc

"}
C {top.sym} 290 -120 0 0 {name=x1}
C {devices/lab_wire.sym} 290 -220 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 290 -10 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -130 0 0 {name=p5 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 520 -110 0 0 {name=p6 sig_type=std_logic lab=OUTB}
