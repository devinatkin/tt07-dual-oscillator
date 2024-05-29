v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -160 90 -160 {
lab=fil_in}
N 245 -230 245 -190 {
lab=vcc}
N 245 -90 245 -45 {
lab=vss}
N 390 -160 450 -160 {
lab=fil_out}
N -90 -40 -90 -20 {
lab=VSS}
N -90 -160 -90 -100 {
lab=fil_in}
N -90 -20 20 -20 {
lab=VSS}
N -90 -160 -70 -160 {
lab=fil_in}
N -10 -160 20 -160 {
lab=fil_in}
N -70 -160 -10 -160 {
lab=fil_in}
N -815 20 -815 70 {
lab=VCC}
N -665 120 -605 120 {
lab=IBIAS}
N -815 170 -815 230 {
lab=VSS}
N 0 -120 90 -120 {
lab=IBIAS}
C {filter22M.sym} 240 -140 0 0 {name=x1}
C {devices/lab_wire.sym} 55 -160 0 0 {name=p7 sig_type=std_logic lab=fil_in}
C {devices/lab_wire.sym} 435 -160 0 0 {name=p1 sig_type=std_logic lab=fil_out}
C {devices/lab_wire.sym} 245 -210 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/lab_wire.sym} 245 -60 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/code.sym} -375 12.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -320 152.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -105 120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
vvss vss 0 dc 0
vvcc vcc 0 dc VCC pwl 0 0 10n 0 10.1n VCC 1000n VCC

.control
tran 100p 1000n
ac dec 10 1k 1G
write filter_tb.raw
.endc

"}
C {devices/iopin.sym} -255 -125 0 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -255 -100 0 0 {name=p5 lab=VSS}
C {devices/vsource.sym} -90 -70 0 0 {name=V2 value="DC 0.9 PULSE(0 1.8 0 1n 1n 22.73n 45.45n) AC 1" savecurrent=false}
C {devices/lab_pin.sym} -90 -20 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -815 40 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -635 120 1 0 {name=p15 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -815 120 0 0 {name=x2}
C {devices/lab_pin.sym} -815 200 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -120 0 0 {name=p6 sig_type=std_logic lab=IBIAS}
