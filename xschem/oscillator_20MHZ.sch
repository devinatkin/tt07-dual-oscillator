v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -810 120 -767.5 {
lab=VCC}
N 120 -687.5 120 -660 {
lab=VSS}
N 15 -732.5 62.5 -732.5 {
lab=OUT_INI,INI[19:0]}
N 152.5 -732.5 210 -732.5 {
lab=INI[19:0],OUT_INI}
N 210 -732.5 285 -732.5 {
lab=INI[19:0],OUT_INI}
N 392.5 -735 452.5 -735 {
lab=OUT_INI}
N 510 -812.5 510 -770 {
lab=VCC}
N 510 -690 510 -662.5 {
lab=VSS}
N 565 -735 577.5 -735 {
lab=OUT}
N 577.5 -735 687.5 -735 {
lab=OUT}
N 542.5 -735 565 -735 {
lab=OUT}
C {inverter.sym} 97.5 -732.5 0 0 {name=x1[20:0]}
C {devices/iopin.sym} -70 -825 0 0 {name=p5 lab=VCC}
C {devices/iopin.sym} -70 -800 0 0 {name=p6 lab=VSS}
C {devices/lab_wire.sym} 285 -732.5 0 0 {name=p7 sig_type=std_logic lab=INI[19:0],OUT_INI}
C {devices/lab_wire.sym} 30 -732.5 0 0 {name=p8 sig_type=std_logic lab=OUT_INI,INI[19:0]}
C {devices/lab_wire.sym} 120 -810 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 120 -660 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 687.5 -735 0 0 {name=p11 lab=OUT}
C {inverter.sym} 487.5 -735 0 0 {name=x3}
C {devices/lab_wire.sym} 510 -662.5 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -812.5 0 0 {name=p23 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 437.5 -735 0 0 {name=p24 sig_type=std_logic lab=OUT_INI}
