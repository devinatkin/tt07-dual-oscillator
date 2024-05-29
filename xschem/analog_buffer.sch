v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -125 510 -125 {
lab=BUF_OUT}
N 300 -75 300 -15 {
lab=VSS}
N 90 -105 130 -105 {
lab=BUF_IN}
N 300 -235 300 -175 {
lab=VCC}
N 240 -235 240 -175 {
lab=IBIAS}
N 80 -145 130 -145 {
lab=BUF_OUT}
C {opamp_1.sym} 280 -125 0 0 {name=x8}
C {devices/lab_wire.sym} 300 -215 0 0 {name=p36 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 300 -35 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -215 0 0 {name=p40 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 120 -145 0 0 {name=p42 sig_type=std_logic lab=BUF_OUT}
C {devices/lab_wire.sym} 110 -105 0 0 {name=p34 sig_type=std_logic lab=BUF_IN}
C {devices/lab_wire.sym} 500 -125 0 0 {name=p1 sig_type=std_logic lab=BUF_OUT}
C {devices/ipin.sym} -355 -105 0 0 {name=p10 lab=BUF_IN}
C {devices/iopin.sym} -255 -345 0 0 {name=p13 lab=VCC}
C {devices/iopin.sym} -255 155 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -355 35 0 0 {name=p15 lab=IBIAS}
C {devices/opin.sym} -275 -105 0 0 {name=p12 lab=BUF_OUT}
