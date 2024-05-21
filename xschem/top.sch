v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 690 -290 690 -260 {
lab=VCC}
N 690 -160 690 -130 {
lab=VSS}
N 840 -210 880 -210 {
lab=OSCA}
N 690 -90 690 -50 {
lab=VCC}
N 690 50 690 100 {
lab=VSS}
N 840 0 890 0 {
lab=OSCB}
N 1070 -110 1070 -70 {
lab=IBIAS}
N 1130 -110 1130 -70 {
lab=VCC}
N 1260 -20 1330 -20 {
lab=OUTB}
N 1250 -230 1330 -230 {
lab=OUTA}
N 1130 30 1130 80 {
lab=VSS}
N 1120 -180 1120 -120 {
lab=VSS}
N 910 -210 950 -210 {
lab=OSCA}
N 880 -210 910 -210 {
lab=OSCA}
N 890 0 960 0 {
lab=OSCB}
N 1120 -340 1120 -280 {
lab=VCC}
N 1060 -340 1060 -280 {
lab=IBIAS}
N 900 -40 960 -40 {
lab=OUTB}
N 900 -250 950 -250 {
lab=OUTA}
N 230 -180 230 -130 {
lab=VCC}
N 380 -80 440 -80 {
lab=IBIAS}
N 230 -30 230 30 {
lab=VSS}
C {devices/iopin.sym} -150 -120 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -150 -60 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} -70 -80 0 0 {name=p4 lab=OUTA}
C {devices/opin.sym} -70 -60 0 0 {name=p3 lab=OUTB}
C {oscillator_20MHZ.sym} 690 -210 0 0 {name=x1}
C {oscillator_21MHZ.sym} 690 0 0 0 {name=x2}
C {devices/lab_wire.sym} 690 -280 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 880 -210 0 0 {name=p6 sig_type=std_logic lab=OSCA}
C {devices/lab_wire.sym} 690 -140 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -70 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 890 0 0 0 {name=p9 sig_type=std_logic lab=OSCB}
C {devices/lab_wire.sym} 690 80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {opamp_1.sym} 1100 -230 0 0 {name=x3}
C {opamp_1.sym} 1110 -20 0 0 {name=x4}
C {devices/lab_wire.sym} 1310 -20 0 0 {name=p11 sig_type=std_logic lab=OUTB}
C {devices/lab_wire.sym} 1320 -230 0 0 {name=p12 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 1120 -320 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1130 -90 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1130 70 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1120 -140 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1060 -320 0 0 {name=p17 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 1070 -90 0 0 {name=p18 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 940 -250 0 0 {name=p19 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 940 -40 0 0 {name=p20 sig_type=std_logic lab=OUTB}
C {devices/lab_pin.sym} 230 -160 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 410 -80 1 0 {name=p22 sig_type=std_logic lab=IBIAS}
C {current_source.sym} 230 -80 0 0 {name=x5}
C {devices/lab_pin.sym} 230 0 0 0 {name=p23 sig_type=std_logic lab=VSS}
