v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -590 120 -590 170 {
lab=VCC}
N -440 220 -380 220 {
lab=IBIAS}
N -590 270 -590 330 {
lab=VSS}
N -170 190 -170 220 {
lab=VCC}
N -170 320 -170 350 {
lab=VSS}
N 70 270 110 270 {
lab=OSCA}
N 480 290 560 290 {
lab=OSC_OUT}
N 350 340 350 400 {
lab=VSS}
N 140 270 180 270 {
lab=OSCA}
N 110 270 140 270 {
lab=OSCA}
N 350 180 350 240 {
lab=VCC}
N 290 180 290 240 {
lab=IBIAS}
N 560 290 590 290 {
lab=OSC_OUT}
N 270 70 360 70 {
lab=#net1}
N 320 70 320 100 {
lab=#net1}
N 320 160 320 200 {
lab=VSS}
N 420 70 500 70 {
lab=OSC_OUT}
N 500 70 500 290 {
lab=OSC_OUT}
N 160 70 210 70 {
lab=OSCA}
N 160 70 160 270 {
lab=OSCA}
N 100 310 180 310 {
lab=INB}
N 0 410 80 410 {
lab=VSS}
N 80 390 80 410 {
lab=VSS}
N 80 310 80 330 {
lab=INB}
N 80 310 100 310 {
lab=INB}
N -20 270 0 270 {
lab=#net2}
N 60 270 70 270 {
lab=OSCA}
C {devices/lab_pin.sym} -590 140 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -410 220 1 0 {name=p22 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -590 220 0 0 {name=x5}
C {devices/lab_pin.sym} -590 300 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/code.sym} -720 737.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -665 877.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -450 845 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 10000n VCC

.control
tran 50p 5000n
write inverter_tb.raw
.endc

"}
C {devices/iopin.sym} -885 710 0 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -885 735 0 0 {name=p5 lab=VSS}
C {oscillator_20MHZ.sym} -170 270 0 0 {name=x2}
C {devices/lab_wire.sym} -170 200 0 0 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 110 270 0 0 {name=p12 sig_type=std_logic lab=OSCA}
C {devices/lab_wire.sym} -170 340 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {opamp_1.sym} 330 290 0 0 {name=x3}
C {devices/lab_wire.sym} 350 200 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 350 380 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 200 0 0 {name=p18 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 320 130 2 0 {name=C4
m=1
value=8.5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 240 70 1 0 {name=R5
value=20k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 540 290 1 0 {name=p19 sig_type=std_logic lab=OSC_OUT}
C {devices/res.sym} 390 70 1 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 320 180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 310 1 0 {name=p6 sig_type=std_logic lab=INB}
C {devices/vsource.sym} 80 360 0 0 {name=V1 value=0.9
 savecurrent=false}
C {devices/lab_wire.sym} 0 410 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/res.sym} 30 270 1 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
