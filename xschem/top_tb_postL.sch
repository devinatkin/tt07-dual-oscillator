v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 780 -140 1360 180 {flags=graph,unlocked
y1=0

ypos1=0.093073771
ypos2=1.0312756
divy=5
subdivy=1
unity=1
x1=-2.1511177e-08
x2=3.6246966e-07
divx=5
subdivx=1



unitx=1
logx=0
logy=0
hilight_wave=-1



digital=1
dataset=0


sim_type=tran
rainbow=1
y2=2









color="4 4 4 4"
node="OUTA_PARAX
OUTB_PARAX
EXTA_PARAX
EXTB_PARAX"}
N 50 40 50 100 {
lab=VSS}
N 50 -130 50 -80 {
lab=VCC}
N 200 -30 280 -30 {
lab=OUTA_PARAX}
N 200 -10 280 -10 {
lab=OUTB_PARAX}
N 280 -30 320 -30 {
lab=OUTA_PARAX}
N 280 -10 320 -10 {
lab=OUTB_PARAX}
N 320 -10 390 -10 {
lab=OUTB_PARAX}
N 450 -10 470 -10 {
lab=EXTB_PARAX}
N 470 -10 470 30 {
lab=EXTB_PARAX}
N 470 30 480 30 {
lab=EXTB_PARAX}
N 480 30 500 30 {
lab=EXTB_PARAX}
N 380 -70 380 -30 {
lab=EXTA_PARAX}
N 380 -70 500 -70 {
lab=EXTA_PARAX}
N 500 -10 500 10 {
lab=VSS}
N 500 90 500 120 {
lab=VSS}
N 300 30 300 120 {
lab=VSS}
N 300 120 500 120 {
lab=VSS}
N 320 50 320 120 {
lab=VSS}
C {devices/iopin.sym} -475 40 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -475 65 0 0 {name=p2 lab=VSS}
C {devices/code.sym} -300 147.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -245 287.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -30 255 0 0 {name=COMMANDS
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
C {top.sym} 50 -20 0 0 {name=x2
schematic=top_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/top.sim.spice])"
tclcommand="textwindow [file normalize ../mag/top.sim.spice]"
}
C {devices/lab_wire.sym} 50 -120 0 0 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 50 90 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -30 0 0 {name=p13 sig_type=std_logic lab=OUTA_PARAX}
C {devices/lab_wire.sym} 280 -10 0 0 {name=p14 sig_type=std_logic lab=OUTB_PARAX}
C {devices/res.sym} 350 -30 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 420 -10 1 0 {name=R4
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 500 60 0 0 {name=C5
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 500 -40 0 0 {name=C6
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 500 120 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 10 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -70 0 0 {name=p17 sig_type=std_logic lab=EXTA_PARAX}
C {devices/lab_wire.sym} 470 -10 0 0 {name=p18 sig_type=std_logic lab=EXTB_PARAX}
C {devices/capa.sym} 320 20 0 0 {name=C7
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 300 0 0 0 {name=C8
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
