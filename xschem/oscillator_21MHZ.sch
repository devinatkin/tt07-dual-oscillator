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
lab=OUT_INI,INI[19:0]}
N 50 0 107.5 0 {
lab=INI[17:0],OUT_INI}
N 107.5 0 182.5 0 {
lab=INI[17:0],OUT_INI}
N 290 -2.5 350 -2.5 {
lab=OUT_INI}
N 407.5 -80 407.5 -37.5 {
lab=VCC}
N 407.5 42.5 407.5 70 {
lab=VSS}
N 462.5 -2.5 475 -2.5 {
lab=OUT}
N 475 -2.5 585 -2.5 {
lab=OUT}
N 440 -2.5 462.5 -2.5 {
lab=OUT}
C {inverter.sym} -5 0 0 0 {name=x1[18:0]}
C {devices/iopin.sym} -172.5 -92.5 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -172.5 -67.5 0 0 {name=p2 lab=VSS}
C {devices/lab_wire.sym} 182.5 0 0 0 {name=p4 sig_type=std_logic lab=INI[17:0],OUT_INI}
C {devices/lab_wire.sym} -72.5 0 0 0 {name=p5 sig_type=std_logic lab=OUT_INI,INI[17:0]}
C {devices/lab_wire.sym} 17.5 -77.5 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 17.5 72.5 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 585 -2.5 0 0 {name=p14 lab=OUT}
C {inverter.sym} 385 -2.5 0 0 {name=x1}
C {devices/lab_wire.sym} 407.5 70 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 407.5 -80 0 0 {name=p20 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 335 -2.5 0 0 {name=p21 sig_type=std_logic lab=OUT_INI}
