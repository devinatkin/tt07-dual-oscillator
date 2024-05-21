v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 0 50 -0 {
lab=VSS}
N 50 30 50 60 {
lab=S}
N -70 60 50 60 {
lab=S}
N -70 30 -70 60 {
lab=S}
N -180 0 -110 0 {
lab=INA}
N 90 -0 140 0 {
lab=INB}
N -70 -90 -70 -30 {
lab=DA}
N 50 -90 50 -30 {
lab=DB}
C {sky130_fd_pr/nfet_01v8.sym} -90 0 0 0 {name=M1
L=1
W=5
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 70 0 0 1 {name=M2
L=1
W=5
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -150 0 0 0 {name=p1 sig_type=std_logic lab=INA}
C {devices/lab_wire.sym} 0 0 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 0 0 0 {name=p8 sig_type=std_logic lab=INB}
C {devices/lab_wire.sym} -70 -70 0 0 {name=p3 sig_type=std_logic lab=DA}
C {devices/lab_wire.sym} 50 -70 0 0 {name=p4 sig_type=std_logic lab=DB}
C {devices/lab_wire.sym} -10 60 0 0 {name=p5 sig_type=std_logic lab=S}
C {devices/ipin.sym} -290 -40 0 0 {name=p10 lab=INA}
C {devices/ipin.sym} -290 -10 0 0 {name=p11 lab=INB}
C {devices/iopin.sym} -340 -120 0 0 {name=p6 lab=DA}
C {devices/iopin.sym} -260 -120 0 0 {name=p7 lab=DB}
C {devices/iopin.sym} -310 50 0 0 {name=p9 lab=S}
C {devices/iopin.sym} -320 120 0 0 {name=p14 lab=VSS}
