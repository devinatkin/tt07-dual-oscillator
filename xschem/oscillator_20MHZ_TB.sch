v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 270 -370 850 -50 {flags=graph,unlocked
y1=0

ypos1=0.046765495
ypos2=0.8186265
divy=5
subdivy=1
unity=1
x1=5.3403516e-08
x2=1.5433947e-07
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









color=4
node=out}
B 2 970 -360 1550 -40 {flags=graph,unlocked
y1=0

ypos1=-0.018575041
ypos2=4.2742004
divy=5
subdivy=1
unity=u
x1=2.0517237e-07
x2=2.1824746e-07
divx=5
subdivx=1



unitx=1
logx=0
logy=0
hilight_wave=-1



digital=1
dataset=0
color="4 7 7"
node="current;\\"1000000 i(vvss) *\\""
sim_type=tran
rainbow=1
y2=8}
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
C {devices/simulator_commands_shown.sym} 70 255 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 2000n VCC

.control
tran 10p 2000n

write oscillator_20MHZ_TB.raw

.endc

"}
C {devices/lab_wire.sym} 230 0 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 0 80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 0 -70 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/launcher.sym} -155 327.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
