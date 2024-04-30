v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -240 190 -150 {
lab=OUT}
N 150 -270 150 -120 {
lab=IN}
N 190 -360 190 -300 {
lab=VDD}
N 190 -270 250 -270 {
lab=VDD}
N 250 -360 250 -270 {
lab=VDD}
N 190 -360 250 -360 {
lab=VDD}
N 190 -120 250 -120 {
lab=VSS}
N 250 -120 250 -20 {
lab=VSS}
N 190 -20 250 -20 {
lab=VSS}
N 190 -90 190 -20 {
lab=VSS}
N 70 -200 150 -200 {
lab=IN}
N 190 -200 260 -200 {
lab=OUT}
C {devices/iopin.sym} -150 -80 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -150 -60 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 170 -270 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 170 -120 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 70 -200 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 260 -200 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 190 -360 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -20 0 0 {name=p6 sig_type=std_logic lab=VSS}
