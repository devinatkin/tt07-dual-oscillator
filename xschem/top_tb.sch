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
lab=OUTB}
N 520 -130 560 -130 {
lab=OUTA}
N 520 -110 560 -110 {
lab=OUTB}
N 560 -110 630 -110 {
lab=OUTB}
N 690 -110 710 -110 {
lab=EXTB}
N 710 -110 710 -70 {
lab=EXTB}
N 710 -70 720 -70 {
lab=EXTB}
N 720 -70 740 -70 {
lab=EXTB}
N 620 -170 620 -130 {
lab=EXTA}
N 620 -170 740 -170 {
lab=EXTA}
N 740 -110 740 -90 {
lab=VSS}
N 740 -10 740 20 {
lab=VSS}
N 540 -70 540 20 {}
N 540 20 740 20 {}
N 560 -50 560 20 {}
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
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 2000n VCC

.control
tran 100p 2000n
write top_tb.raw
.endc

"}
C {top.sym} 290 -120 0 0 {name=x1}
C {devices/lab_wire.sym} 290 -220 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 290 -10 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -130 0 0 {name=p5 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 520 -110 0 0 {name=p6 sig_type=std_logic lab=OUTB}
C {devices/res.sym} 590 -130 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 660 -110 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 740 -40 0 0 {name=C1
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 740 -140 0 0 {name=C2
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 740 20 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 740 -90 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 720 -170 0 0 {name=p9 sig_type=std_logic lab=EXTA}
C {devices/lab_wire.sym} 710 -110 0 0 {name=p10 sig_type=std_logic lab=EXTB}
C {devices/capa.sym} 560 -80 0 0 {name=C3
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 540 -100 0 0 {name=C4
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
