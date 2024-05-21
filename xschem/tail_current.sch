v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -50 80 -30 {
lab=TAILV}
N 80 0 130 0 {
lab=VSS}
N 80 30 80 90 {
lab=VSS}
N -30 0 40 0 {
lab=IBIAS}
N 130 0 130 90 {
lab=VSS}
N 80 90 130 90 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 60 0 0 0 {name=M3
L=1
W=5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 80 70 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 0 0 0 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 80 -50 0 0 {name=p2 sig_type=std_logic lab=TAILV}
C {devices/iopin.sym} 50 210 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -50 90 0 0 {name=p15 lab=IBIAS}
C {devices/iopin.sym} 50 -125 0 0 {name=p13 lab=TAILV}
