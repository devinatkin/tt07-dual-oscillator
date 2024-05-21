v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -350 -100 -350 -80 {
lab=VSS}
N -350 -220 -350 -160 {
lab=IN_BUF}
N -350 -220 -330 -220 {
lab=IN_BUF}
N -610 -250 -610 -200 {
lab=VCC}
N -460 -150 -400 -150 {
lab=IBIAS}
N -610 -100 -610 -40 {
lab=VSS}
N 210 -150 210 -100 {
lab=VCC}
N 210 -300 210 -250 {
lab=VSS}
N 340 -200 410 -200 {
lab=OUT_BUF}
N -40 -220 40 -220 {
lab=IN_BUF}
N -40 -180 40 -180 {
lab=OUT_BUF}
N -60 -180 -60 -160 {
lab=OUT_BUF}
N -60 -180 -40 -180 {
lab=OUT_BUF}
N -250 -220 -230 -220 {
lab=IN_BUF}
N -170 -220 -140 -220 {
lab=IN_BUF}
N -140 -220 -100 -220 {
lab=IN_BUF}
N 150 -150 150 -100 {
lab=IBIAS}
N 390 -200 390 -180 {
lab=OUT_BUF}
N 390 -120 390 -60 {
lab=VSS}
N -60 -160 -60 -100 {
lab=OUT_BUF}
N -60 -70 360 -70 {
lab=OUT_BUF}
N -60 -100 -60 -70 {
lab=OUT_BUF}
N 360 -200 360 -70 {
lab=OUT_BUF}
N -100 -220 -40 -220 {
lab=IN_BUF}
N -330 -220 -250 -220 {
lab=IN_BUF}
N -230 -220 -170 -220 {
lab=IN_BUF}
C {devices/code.sym} -220 177.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -165 317.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/iopin.sym} -795 -390 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -795 -365 0 0 {name=p2 lab=VSS}
C {devices/simulator_commands_shown.sym} 50 285 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 dc VCC

.control

ac dec 20 1 1e12
write ac_opamp_1_tb.raw
.endc

"}
C {devices/vsource.sym} -350 -130 0 0 {name=V2 value="0.9 AC 1" savecurrent=false}
C {devices/lab_pin.sym} -350 -80 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -610 -230 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -430 -150 1 0 {name=p15 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -610 -150 0 0 {name=x2}
C {devices/lab_pin.sym} -610 -70 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {opamp_1.sym} 190 -200 2 1 {name=x3}
C {devices/lab_pin.sym} 210 -110 2 1 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 210 -260 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 390 -200 1 0 {name=p19 sig_type=std_logic lab=OUT_BUF}
C {devices/lab_pin.sym} 150 -130 2 1 {name=p21 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 390 -150 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 390 -80 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -40 -220 1 0 {name=p17 sig_type=std_logic lab=IN_BUF}
