v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1100 -600 1680 -280 {flags=graph,unlocked
y1=0

ypos1=0.16676877
ypos2=0.93862978
divy=5
subdivy=1
unity=1
x1=5.4636678e-09
x2=4.3946978e-07
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
node="OUTA
OUTB
EXTA
EXTB"}
N 370 -410 370 -350 {
lab=VSS}
N 370 -580 370 -530 {
lab=VCC}
N 520 -480 600 -480 {
lab=OUTA}
N 520 -460 600 -460 {
lab=OUTB}
N 600 -480 640 -480 {
lab=OUTA}
N 600 -460 640 -460 {
lab=OUTB}
N 640 -460 710 -460 {
lab=OUTB}
N 770 -460 790 -460 {
lab=EXTB}
N 790 -460 790 -420 {
lab=EXTB}
N 790 -420 800 -420 {
lab=EXTB}
N 800 -420 820 -420 {
lab=EXTB}
N 700 -520 700 -480 {
lab=EXTA}
N 700 -520 820 -520 {
lab=EXTA}
N 820 -460 820 -440 {
lab=VSS}
N 820 -360 820 -330 {
lab=VSS}
N 620 -420 620 -330 {
lab=VSS}
N 620 -330 820 -330 {
lab=VSS}
N 640 -400 640 -330 {
lab=VSS}
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

wrdata tb_top.dat exta extb

.endc

"}
C {top.sym} 370 -470 0 0 {name=x1}
C {devices/lab_wire.sym} 370 -570 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 370 -360 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -480 0 0 {name=p5 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 600 -460 0 0 {name=p6 sig_type=std_logic lab=OUTB}
C {devices/res.sym} 670 -480 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 740 -460 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 820 -390 0 0 {name=C1
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 820 -490 0 0 {name=C2
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 820 -330 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 -440 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 800 -520 0 0 {name=p9 sig_type=std_logic lab=EXTA}
C {devices/lab_wire.sym} 790 -460 0 0 {name=p10 sig_type=std_logic lab=EXTB}
C {devices/capa.sym} 640 -430 0 0 {name=C3
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 620 -450 0 0 {name=C4
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
