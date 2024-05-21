v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2.5 -595 802.5 -195 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=20e-9
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=freq
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -210 -100 -210 -50 {
lab=VCC}
N -60 -0 -0 0 {
lab=IBIAS}
N -210 50 -210 110 {
lab=#net4}
C {devices/code.sym} -490 307.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -435 447.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/iopin.sym} -435 -240 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -435 -215 0 0 {name=p2 lab=VSS}
C {devices/simulator_commands_shown.sym} -220 415 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 1000n VCC

.control
tran 100p 1000n
write inverter_tb.raw
.endc

"}
C {devices/lab_pin.sym} -210 -80 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -30 0 1 0 {name=p13 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -210 0 0 0 {name=x1}
C {devices/lab_pin.sym} -210 80 0 0 {name=p3 sig_type=std_logic lab=VSS}
