v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -350 20 -350 70 {
lab=VCC}
N -200 120 -140 120 {
lab=IBIAS}
N -350 170 -350 230 {
lab=VSS}
N 710 -330 710 -280 {
lab=VCC}
N 710 -180 710 -120 {
lab=VSS}
N 650 -330 650 -280 {
lab=IBIAS}
N 460 -250 540 -250 {
lab=#net1}
N 840 -230 990 -230 {
lab=OSC_OUT}
N 460 -210 540 -210 {
lab=INB}
N 440 -130 440 -110 {
lab=VSS}
N 440 -210 440 -190 {
lab=INB}
N 440 -210 460 -210 {
lab=INB}
N 450 -250 460 -250 {
lab=#net1}
N 230 -250 390 -250 {
lab=#net2}
N 510 -430 640 -430 {
lab=#net1}
N 510 -430 510 -250 {
lab=#net1}
N 700 -430 860 -430 {
lab=OSC_OUT}
N 860 -430 860 -230 {
lab=OSC_OUT}
N 200 -250 230 -250 {
lab=#net2}
N -30 -250 30 -250 {
lab=#net3}
N 90 -250 140 -250 {
lab=#net4}
N -190 -250 -90 -250 {
lab=OSC_OUT}
N -190 -490 -190 -250 {
lab=OSC_OUT}
N -190 -490 990 -490 {
lab=OSC_OUT}
N 990 -490 990 -230 {
lab=OSC_OUT}
N 0 -250 0 -220 {
lab=#net3}
N 120 -250 120 -220 {
lab=#net4}
N 0 -160 -0 -110 {
lab=VSS}
N 120 -160 120 -110 {
lab=VSS}
C {opamp_1.sym} 690 -230 0 0 {name=x1}
C {devices/lab_pin.sym} -350 40 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -170 120 1 0 {name=p22 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -350 120 0 0 {name=x5}
C {devices/lab_pin.sym} -350 200 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -330 1 0 {name=p1 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 710 -320 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 710 -150 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code.sym} -480 637.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -425 777.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -210 745 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 10000n VCC

.control
tran 50p 10000n
write inverter_tb.raw
.endc

"}
C {devices/iopin.sym} -645 610 0 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -645 635 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 500 -210 1 0 {name=p6 sig_type=std_logic lab=INB}
C {devices/vsource.sym} 440 -160 0 0 {name=V1 value=0.9
 savecurrent=false}
C {devices/lab_pin.sym} 440 -120 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/res.sym} 420 -250 1 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 670 -430 1 0 {name=R2
value=120k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 170 -250 1 0 {name=C1
m=1
value=8.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 60 -250 1 0 {name=C2
m=1
value=8.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -60 -250 1 0 {name=C3
m=1
value=8.5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 120 -190 2 0 {name=R3
value=4k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 0 -190 2 0 {name=R4
value=4k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 120 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 990 -380 0 0 {name=p10 sig_type=std_logic lab=OSC_OUT}
