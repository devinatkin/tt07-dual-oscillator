v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 122.5 -615 922.5 -215 {flags=graph
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
N -480 230 -480 280 {
lab=VCC}
N -480 380 -480 430 {
lab=VSS}
N -350 330 -280 330 {
lab=OUT}
N -730 310 -650 310 {
lab=INA}
N -730 350 -650 350 {
lab=INB}
N -940 430 -940 450 {
lab=VSS}
N -830 450 -750 450 {
lab=VSS}
N -750 430 -750 450 {
lab=VSS}
N -750 350 -750 370 {
lab=INB}
N -750 350 -730 350 {
lab=INB}
N -940 310 -940 370 {
lab=INPUT}
N -830 310 -730 310 {
lab=INA}
N -940 450 -830 450 {
lab=VSS}
N -940 310 -920 310 {
lab=INPUT}
N -860 310 -830 310 {
lab=INA}
N -830 310 -790 310 {
lab=INA}
N -740 180 -530 180 {
lab=INA}
N -740 180 -740 310 {
lab=INA}
N -470 180 -330 180 {
lab=OUT}
N -330 180 -330 330 {
lab=OUT}
N -570 230 -540 230 {
lab=IBIAS}
N -540 230 -540 280 {
lab=IBIAS}
N -690 230 -630 230 {
lab=IBIAS}
N -300 330 -300 350 {
lab=OUT}
N -300 410 -300 470 {
lab=VSS}
N -630 230 -570 230 {
lab=IBIAS}
N -1450 170 -1450 220 {
lab=VCC}
N -1300 270 -1240 270 {
lab=IBIAS}
N -1450 320 -1450 380 {
lab=VSS}
C {devices/code.sym} -1060 597.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -1005 737.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/iopin.sym} -1005 50 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -1005 75 0 0 {name=p2 lab=VSS}
C {devices/simulator_commands_shown.sym} -790 705 0 0 {name=COMMANDS
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
C {opamp_1.sym} -500 330 0 0 {name=x1}
C {devices/lab_pin.sym} -480 240 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -480 420 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -690 310 1 0 {name=p5 sig_type=std_logic lab=INA}
C {devices/lab_pin.sym} -690 350 1 0 {name=p6 sig_type=std_logic lab=INB}
C {devices/lab_pin.sym} -300 330 1 0 {name=p7 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} -750 400 0 0 {name=V1 value=0.9
 savecurrent=false}
C {devices/vsource.sym} -940 400 0 0 {name=V2 value="SIN(0.9 0.3 22000000)" savecurrent=false}
C {devices/lab_pin.sym} -940 450 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/res.sym} -890 310 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -500 180 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -650 230 0 0 {name=p9 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} -300 380 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -300 450 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -930 310 1 0 {name=p11 sig_type=std_logic lab=INPUT}
C {devices/lab_pin.sym} -1450 190 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -1270 270 1 0 {name=p15 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -1450 270 0 0 {name=x2}
C {devices/lab_pin.sym} -1450 350 0 0 {name=p16 sig_type=std_logic lab=VSS}
