v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 180 -170 240 {
lab=VSS}
N -170 150 -130 150 {
lab=VSS}
N -130 150 -130 240 {
lab=VSS}
N -210 80 -210 150 {
lab=IBIAS}
N -210 80 -170 80 {
lab=IBIAS}
N -170 80 -170 120 {
lab=IBIAS}
N -170 50 -170 80 {
lab=IBIAS}
N -170 -80 -170 -10 {
lab=VCC}
N -170 240 -130 240 {
lab=VSS}
N -270 20 -200 20 {
lab=VSS}
N -200 20 -190 20 {
lab=VSS}
C {devices/iopin.sym} -105 -160 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -105 -135 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -170 220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -190 150 0 0 {name=M3
L=1
W=40
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
C {devices/lab_pin.sym} -170 -60 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -210 90 0 0 {name=p13 sig_type=std_logic lab=IBIAS}
C {devices/opin.sym} -30 80 0 0 {name=p3 lab=IBIAS}
C {sky130_fd_pr/res_xhigh_po.sym} -170 20 0 0 {name=R1
W=1
L=9
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -230 20 1 0 {name=p4 sig_type=std_logic lab=VSS}
