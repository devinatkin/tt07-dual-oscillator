v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 17.5 -77.5 17.5 -35 {
lab=VCC}
N 17.5 45 17.5 72.5 {
lab=VSS}
N -87.5 0 -40 0 {
lab=OUT,INI[98:0]}
N 50 0 107.5 0 {
lab=INI[98:0],OUT}
N 107.5 0 182.5 0 {
lab=INI[98:0],OUT}
C {inverter.sym} -5 0 0 0 {name=x1[99:0]}
C {devices/iopin.sym} -172.5 -92.5 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -172.5 -67.5 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 205 -77.5 0 0 {name=p3 lab=OUT}
C {devices/lab_wire.sym} 182.5 0 0 0 {name=p4 sig_type=std_logic lab=INI[98:0],OUT}
C {devices/lab_wire.sym} -72.5 0 0 0 {name=p5 sig_type=std_logic lab=OUT,INI[98:0]}
C {devices/lab_wire.sym} 17.5 -77.5 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 17.5 72.5 0 0 {name=p7 sig_type=std_logic lab=VSS}
