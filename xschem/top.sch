v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -260 190 -230 {
lab=VCC}
N 190 -130 190 -100 {
lab=VSS}
N 340 -180 380 -180 {
lab=OUTA}
N 190 -60 190 -20 {
lab=VCC}
N 190 80 190 130 {
lab=VSS}
N 340 30 390 30 {
lab=OUTB}
C {devices/iopin.sym} -150 -120 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -150 -60 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} -70 -80 0 0 {name=p4 lab=OUTA}
C {devices/opin.sym} -70 -60 0 0 {name=p3 lab=OUTB}
C {oscillator_20MHZ.sym} 190 -180 0 0 {name=x1}
C {oscillator_21MHZ.sym} 190 30 0 0 {name=x2}
C {devices/lab_wire.sym} 190 -250 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 380 -180 0 0 {name=p6 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 190 -110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -40 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 390 30 0 0 {name=p9 sig_type=std_logic lab=OUTB}
C {devices/lab_wire.sym} 190 110 0 0 {name=p10 sig_type=std_logic lab=VSS}
