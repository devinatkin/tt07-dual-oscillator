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
N -80 190 -80 220 {
lab=VCC}
N -80 320 -80 350 {
lab=VSS}
N 70 270 110 270 {
lab=OSCA}
N 480 250 560 250 {
lab=OSC_OUT}
N 350 300 350 360 {
lab=VSS}
N 140 270 180 270 {
lab=OSCA}
N 110 270 140 270 {
lab=OSCA}
N 350 140 350 200 {
lab=VCC}
N 290 140 290 200 {
lab=IBIAS}
N 130 230 180 230 {
lab=OUTA}
N 560 250 590 250 {
lab=OSC_OUT}
N 700 250 700 290 {
lab=OUTA}
N 650 250 700 250 {
lab=OUTA}
N 700 350 700 410 {
lab=VSS}
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
C {oscillator_20MHZ.sym} -80 270 0 0 {name=x2}
C {devices/lab_wire.sym} -80 200 0 0 {name=p11 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 110 270 0 0 {name=p12 sig_type=std_logic lab=OSCA}
C {devices/lab_wire.sym} -80 340 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {opamp_1.sym} 330 250 0 0 {name=x3}
C {devices/lab_wire.sym} 690 250 0 0 {name=p14 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 350 160 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 350 340 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 160 0 0 {name=p18 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 170 230 0 0 {name=p20 sig_type=std_logic lab=OUTA}
C {devices/capa.sym} 700 320 2 0 {name=C4
m=1
value=8.5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 620 250 1 0 {name=R5
value=12k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 700 390 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 250 1 0 {name=p19 sig_type=std_logic lab=OSC_OUT}
