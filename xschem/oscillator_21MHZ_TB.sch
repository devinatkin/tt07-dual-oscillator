v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 320 -420 900 -100 {flags=graph,unlocked
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
B 2 1020 -410 1600 -90 {flags=graph,unlocked
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
N 20 -140 20 -100 {
lab=VCC}
N 20 0 20 40 {
lab=VSS}
N 170 -50 260 -50 {
lab=OUT}
C {devices/code.sym} -190 97.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -135 237.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 80 205 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 3000n VCC

.control
tran 10p 3000n
write top_tb.raw
.endc

"}
C {devices/lab_wire.sym} 250 -50 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 20 30 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 -120 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {oscillator_21MHZ.sym} 20 -50 0 0 {name=x1}
