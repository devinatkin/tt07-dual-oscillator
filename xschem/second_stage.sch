v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 25 -285 155 -285 {
lab=DIFF_OUT}
N 95 -115 155 -115 {
lab=IBIAS}
N 195 -85 195 -25 {
lab=VSS}
N 195 -115 235 -115 {
lab=VSS}
N 235 -115 235 -25 {
lab=VSS}
N 195 -25 235 -25 {
lab=VSS}
N 195 -255 195 -145 {
lab=OUT}
N 195 -425 195 -315 {
lab=VCC}
N 195 -205 315 -205 {
lab=OUT}
N 195 -285 225 -285 {
lab=VCC}
N 225 -425 225 -285 {
lab=VCC}
N 195 -425 225 -425 {
lab=VCC}
N 20 -285 25 -285 {
lab=DIFF_OUT}
C {devices/lab_wire.sym} 195 -370 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 130 -285 0 0 {name=p9 sig_type=std_logic lab=DIFF_OUT}
C {sky130_fd_pr/nfet_01v8.sym} 175 -115 0 0 {name=M6
L=0.5
W=5
nf=1
mult=19
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 305 -205 0 0 {name=p16 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 135 -115 0 0 {name=p17 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 225 -25 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -70 -450 0 0 {name=p13 lab=VCC}
C {devices/iopin.sym} -70 50 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -15 -115 0 0 {name=p15 lab=IBIAS}
C {devices/ipin.sym} -25 -295 0 0 {name=p1 lab=DIFF_OUT}
C {devices/opin.sym} 440 -205 0 0 {name=p12 lab=OUT}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 175 -285 0 0 {name=M2
L=0.5
W=5
nf=1
mult=14
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
