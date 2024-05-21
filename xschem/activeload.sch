v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 10 -40 80 {
lab=DA}
N 0 -20 40 -20 {
lab=DA}
N 20 -20 20 30 {
lab=DA}
N -40 30 20 30 {
lab=DA}
N -150 -20 -40 -20 {
lab=VCC}
N 80 -90 80 -50 {
lab=VCC}
N -40 -90 80 -90 {
lab=VCC}
N -40 -90 -40 -50 {
lab=VCC}
N 20 -160 20 -90 {
lab=VCC}
N 80 10 80 50 {
lab=B}
N 80 -20 180 -20 {
lab=VCC}
N 80 50 80 80 {
lab=B}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -20 0 1 {name=M4
L=0.5
W=5
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 60 -20 0 0 {name=M5
L=0.5
W=5
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} -120 -20 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 20 -130 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} -40 60 0 0 {name=p24 sig_type=std_logic lab=DA}
C {devices/lab_wire.sym} 170 -20 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 80 60 0 0 {name=p2 sig_type=std_logic lab=DB}
C {devices/iopin.sym} -50 130 0 0 {name=p6 lab=DA}
C {devices/iopin.sym} 30 130 0 0 {name=p7 lab=DB}
C {devices/iopin.sym} -250 -110 0 0 {name=p13 lab=VCC}
