v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 102.5 -137.5 102.5 -95 {
lab=VCC}
N 102.5 -15 102.5 12.5 {
lab=VSS}
N -2.5 -60 45 -60 {
lab=OUT,INI[98:0]}
N 135 -60 192.5 -60 {
lab=INI[98:0],OUT}
N 192.5 -60 267.5 -60 {
lab=INI[98:0],OUT}
C {inverter.sym} 80 -60 0 0 {name=x1[99:0]}
C {devices/iopin.sym} -87.5 -152.5 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -87.5 -127.5 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 290 -137.5 0 0 {name=p3 lab=OUT}
C {devices/lab_wire.sym} 267.5 -60 0 0 {name=p4 sig_type=std_logic lab=INI[98:0],OUT}
C {devices/lab_wire.sym} 12.5 -60 0 0 {name=p5 sig_type=std_logic lab=OUT,INI[98:0]}
C {devices/lab_wire.sym} 102.5 -137.5 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 102.5 12.5 0 0 {name=p7 sig_type=std_logic lab=VSS}
