v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -0 80 -0 {
lab=VSS}
N 20 30 20 80 {
lab=#net1}
N -100 -0 -20 0 {
lab=#net2}
N 20 -100 20 -30 {
lab=FIL_OUT}
N -100 0 -100 20 {
lab=#net2}
N -100 -40 -100 0 {
lab=#net2}
N -100 -100 20 -100 {
lab=FIL_OUT}
N -100 80 20 80 {
lab=#net1}
N 170 30 170 80 {
lab=#net1}
N 20 80 170 80 {
lab=#net1}
N 170 -100 170 -30 {
lab=FIL_OUT}
N 20 -100 170 -100 {
lab=FIL_OUT}
N -30 -130 -30 -100 {
lab=FIL_OUT}
N -30 -230 -30 -190 {
lab=VCC}
N -320 130 -320 170 {
lab=VCC}
N -320 270 -320 310 {
lab=VSS}
N -170 220 -80 220 {
lab=OSC_OUT}
N -80 220 -40 220 {
lab=OSC_OUT}
N -40 180 -40 220 {
lab=OSC_OUT}
N -40 80 -40 120 {
lab=#net1}
N -730 310 -730 360 {
lab=VCC}
N -580 410 -520 410 {
lab=IBIAS}
N -730 460 -730 520 {
lab=VSS}
N 260 410 260 430 {
lab=TAILV}
N 260 460 310 460 {
lab=VSS}
N 260 490 260 550 {
lab=VSS}
N 150 460 220 460 {
lab=IBIAS}
N 310 460 310 550 {
lab=VSS}
N 260 550 310 550 {
lab=VSS}
N 260 330 260 410 {
lab=TAILV}
N 260 300 310 300 {
lab=VCC}
N 310 230 310 300 {
lab=VCC}
N 260 230 310 230 {
lab=VCC}
N 260 230 260 270 {
lab=VCC}
N 220 300 220 360 {
lab=TAILV}
N 220 360 250 360 {
lab=TAILV}
N 250 360 260 360 {
lab=TAILV}
N -30 -160 30 -160 {
lab=VCC}
N -140 -160 -70 -160 {
lab=TAILV}
N -60 -30 -60 -0 {
lab=#net2}
N -60 -100 -60 -90 {
lab=FIL_OUT}
C {sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=M1
L=1
W=80
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} -100 50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -100 -70 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 170 0 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -30 -220 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {oscillator_20MHZ.sym} -320 220 0 0 {name=x1}
C {devices/lab_wire.sym} -90 220 0 0 {name=p1 sig_type=std_logic lab=OSC_OUT}
C {devices/lab_wire.sym} -320 300 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -320 150 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 130 -100 0 0 {name=p5 sig_type=std_logic lab=FIL_OUT}
C {devices/code.sym} -1140 -122.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} -860 -15 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 1500n VCC

.control
tran 10p 1000n

write single_transistor_filter_TB.raw

.endc

"}
C {devices/launcher.sym} -1085 57.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 70 0 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/res.sym} -40 150 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -730 330 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -550 410 1 0 {name=p15 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -730 410 0 0 {name=x2}
C {devices/lab_pin.sym} -730 490 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 240 460 0 0 {name=M3
L=1
W=5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 260 530 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 460 0 0 {name=p8 sig_type=std_logic lab=IBIAS}
C {sky130_fd_pr/pfet_01v8.sym} 240 300 0 0 {name=M2
L=1
W=40
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 260 230 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/pfet_01v8.sym} -50 -160 0 0 {name=M4
L=1
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 220 350 0 0 {name=p10 sig_type=std_logic lab=TAILV}
C {devices/lab_wire.sym} 30 -160 0 0 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} -100 -160 0 0 {name=p12 sig_type=std_logic lab=TAILV}
C {devices/res.sym} -60 -60 0 0 {name=R3
value=1000k
footprint=1206
device=resistor
m=1}
