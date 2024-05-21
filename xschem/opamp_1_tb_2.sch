v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -340 540 -290 {
lab=VCC}
N 540 -190 540 -140 {
lab=VSS}
N 670 -240 740 -240 {
lab=OUT}
N 290 -260 370 -260 {
lab=INA}
N 290 -220 370 -220 {
lab=INB}
N 80 -140 80 -120 {
lab=VSS}
N 190 -120 270 -120 {
lab=VSS}
N 270 -140 270 -120 {
lab=VSS}
N 270 -220 270 -200 {
lab=INB}
N 270 -220 290 -220 {
lab=INB}
N 80 -260 80 -200 {
lab=INPUT}
N 190 -260 290 -260 {
lab=INA}
N 80 -120 190 -120 {
lab=VSS}
N 80 -260 100 -260 {
lab=INPUT}
N 160 -260 190 -260 {
lab=INA}
N 190 -260 230 -260 {
lab=INA}
N 280 -390 490 -390 {
lab=INA}
N 280 -390 280 -260 {
lab=INA}
N 550 -390 690 -390 {
lab=OUT}
N 690 -390 690 -240 {
lab=OUT}
N 480 -340 480 -290 {
lab=IBIAS}
N 720 -240 720 -220 {
lab=OUT}
N 720 -160 720 -100 {
lab=VSS}
N -360 -450 -360 -400 {
lab=VCC}
N -210 -350 -150 -350 {
lab=IBIAS}
N -360 -300 -360 -240 {
lab=VSS}
N 1370 -170 1370 -120 {
lab=VCC}
N 1370 -320 1370 -270 {
lab=VSS}
N 1500 -220 1570 -220 {
lab=OUT_BUF}
N 1120 -240 1200 -240 {
lab=IN_BUF}
N 1120 -200 1200 -200 {
lab=OUT_BUF}
N 1100 -200 1100 -180 {
lab=OUT_BUF}
N 1100 -200 1120 -200 {
lab=OUT_BUF}
N 910 -240 910 -180 {
lab=INPUT}
N 910 -240 930 -240 {
lab=INPUT}
N 990 -240 1020 -240 {
lab=IN_BUF}
N 1020 -240 1060 -240 {
lab=IN_BUF}
N 1310 -170 1310 -120 {
lab=IBIAS}
N 1550 -220 1550 -200 {
lab=OUT_BUF}
N 1550 -140 1550 -80 {
lab=VSS}
N 1100 -180 1100 -120 {
lab=OUT_BUF}
N 1100 -90 1520 -90 {
lab=OUT_BUF}
N 1100 -120 1100 -90 {
lab=OUT_BUF}
N 1520 -220 1520 -90 {
lab=OUT_BUF}
N 1060 -240 1120 -240 {
lab=IN_BUF}
N 2190 -160 2190 -110 {
lab=VCC}
N 2190 -310 2190 -260 {
lab=VSS}
N 2320 -210 2390 -210 {
lab=OUTPUT_CMRR}
N 1940 -230 2020 -230 {
lab=INPUT_CMRR}
N 1940 -190 2020 -190 {
lab=INPUT_CMRR}
N 1920 -190 1940 -190 {
lab=INPUT_CMRR}
N 1730 -230 1730 -170 {
lab=INPUT}
N 1730 -230 1750 -230 {
lab=INPUT}
N 1810 -230 1840 -230 {
lab=INPUT_CMRR}
N 1840 -230 1880 -230 {
lab=INPUT_CMRR}
N 2130 -160 2130 -110 {
lab=IBIAS}
N 2370 -210 2370 -190 {
lab=OUTPUT_CMRR}
N 2370 -130 2370 -70 {
lab=VSS}
N 1880 -230 1940 -230 {
lab=INPUT_CMRR}
N 1920 -230 1920 -190 {
lab=INPUT_CMRR}
N 2180 -670 2180 -620 {
lab=VSS}
N 2310 -570 2380 -570 {
lab=OUTPUT_PSRR}
N 1930 -590 2010 -590 {
lab=INPUT_PSRR}
N 1930 -550 2010 -550 {
lab=INPUT_PSRR}
N 1910 -550 1930 -550 {
lab=INPUT_PSRR}
N 1720 -590 1720 -530 {
lab=INPUT_PSRR}
N 1720 -590 1740 -590 {
lab=INPUT_PSRR}
N 1800 -590 1830 -590 {
lab=INPUT_PSRR}
N 1830 -590 1870 -590 {
lab=INPUT_PSRR}
N 2120 -520 2120 -470 {
lab=IBIAS}
N 2360 -570 2360 -550 {
lab=OUTPUT_PSRR}
N 2360 -490 2360 -430 {
lab=VSS}
N 1870 -590 1930 -590 {
lab=INPUT_PSRR}
N 1910 -590 1910 -550 {
lab=INPUT_PSRR}
N 1720 -470 1720 -400 {
lab=VSS}
N 1740 -590 1800 -590 {
lab=INPUT_PSRR}
N 2180 -430 2180 -390 {
lab=VCC}
N 2180 -520 2180 -490 {
lab=#net1}
C {devices/code.sym} 30 -22.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 85 117.5 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/iopin.sym} -545 -590 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -545 -565 0 0 {name=p2 lab=VSS}
C {devices/simulator_commands_shown.sym} 300 85 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.param VCC=1.8
.param FREQ_IN=50000000
vvss vss 0 dc 0
vvcc vcc 0 pwl 0 0 10n 0 10.1n VCC 4000n VCC

.control
tran 100p 4000n
write inverter_tb.raw
.endc

"}
C {opamp_1.sym} 520 -240 0 0 {name=x1}
C {devices/lab_pin.sym} 540 -330 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 540 -150 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -260 1 0 {name=p5 sig_type=std_logic lab=INA}
C {devices/lab_pin.sym} 330 -220 1 0 {name=p6 sig_type=std_logic lab=INB}
C {devices/lab_pin.sym} 720 -240 1 0 {name=p7 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} 270 -170 0 0 {name=V1 value=0.9
 savecurrent=false}
C {devices/vsource.sym} 80 -170 0 0 {name=V2 value="SIN(0.9 0.15 FREQ_IN)" savecurrent=false}
C {devices/lab_pin.sym} 80 -120 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/res.sym} 130 -260 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 520 -390 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 480 -310 0 0 {name=p9 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 720 -190 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 720 -120 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -260 1 0 {name=p11 sig_type=std_logic lab=INPUT}
C {devices/lab_pin.sym} -360 -430 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -180 -350 1 0 {name=p15 sig_type=std_logic lab=IBIAS}
C {current_source.sym} -360 -350 0 0 {name=x2}
C {devices/lab_pin.sym} -360 -270 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {opamp_1.sym} 1350 -220 2 1 {name=x3}
C {devices/lab_pin.sym} 1370 -130 2 1 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1370 -280 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1550 -220 1 0 {name=p19 sig_type=std_logic lab=OUT_BUF}
C {devices/res.sym} 960 -240 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1310 -150 2 1 {name=p21 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 1550 -170 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1550 -100 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -240 1 0 {name=p23 sig_type=std_logic lab=INPUT}
C {devices/lab_pin.sym} 1120 -240 1 0 {name=p17 sig_type=std_logic lab=IN_BUF}
C {opamp_1.sym} 2170 -210 2 1 {name=x4}
C {devices/lab_pin.sym} 2190 -120 2 1 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 2190 -270 2 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2370 -210 1 0 {name=p24 sig_type=std_logic lab=OUTPUT_CMRR}
C {devices/res.sym} 1780 -230 1 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2130 -140 2 1 {name=p25 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 2370 -160 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2370 -90 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1740 -230 1 0 {name=p27 sig_type=std_logic lab=INPUT}
C {devices/lab_pin.sym} 1940 -230 1 0 {name=p28 sig_type=std_logic lab=INPUT_CMRR}
C {opamp_1.sym} 2160 -570 2 1 {name=x5}
C {devices/lab_pin.sym} 2180 -400 2 1 {name=p29 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 2180 -630 2 1 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2360 -570 1 0 {name=p31 sig_type=std_logic lab=OUTPUT_PSRR}
C {devices/lab_pin.sym} 2120 -500 2 1 {name=p32 sig_type=std_logic lab=IBIAS}
C {devices/capa.sym} 2360 -520 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2360 -450 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1930 -590 1 0 {name=p35 sig_type=std_logic lab=INPUT_PSRR}
C {devices/vsource.sym} 1720 -500 0 0 {name=V3 value=0.9
 savecurrent=false}
C {devices/lab_pin.sym} 1720 -440 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2180 -460 0 0 {name=V4 value="SIN(0 0.1 1000)" savecurrent=false}
