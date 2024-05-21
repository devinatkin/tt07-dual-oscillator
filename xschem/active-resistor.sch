v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 100 -50 100 {
lab=VSS}
N -100 130 -100 190 {
lab=VSS}
N -210 100 -140 100 {
lab=IBIAS}
N -50 100 -50 190 {
lab=VSS}
N -100 190 -50 190 {
lab=VSS}
N -100 -10 -100 70 {
lab=RBIAS}
N -100 -90 -100 -70 {
lab=#net1}
N -140 -40 -100 -40 {
lab=VCC}
N -140 -120 -140 -40 {
lab=VCC}
N -140 -120 -100 -120 {
lab=VCC}
N -60 -120 -60 -80 {
lab=#net1}
N -100 -80 -60 -80 {
lab=#net1}
N -60 -40 -60 10 {
lab=RBIAS}
N -100 10 -60 10 {
lab=RBIAS}
N -100 -280 -100 -150 {
lab=VCC}
N -140 -210 -140 -120 {
lab=VCC}
N -140 -210 -100 -210 {
lab=VCC}
N 150 -20 170 -20 {
lab=RN}
N 120 -70 120 -20 {
lab=VCC}
N 100 40 120 20 {
lab=RBIAS}
N 60 40 100 40 {
lab=RBIAS}
N 10 -20 90 -20 {
lab=RP}
N 230 -20 310 -20 {
lab=RN}
N 170 -20 230 -20 {
lab=RN}
C {devices/lab_wire.sym} -100 170 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 100 0 0 {name=p21 sig_type=std_logic lab=IBIAS}
C {sky130_fd_pr/nfet_01v8.sym} -120 100 0 0 {name=M9
L=1
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -80 -40 0 1 {name=M10
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -80 -120 0 1 {name=M11
L=0.5
W=7.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} -100 -230 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} -100 40 0 0 {name=p23 sig_type=std_logic lab=RBIAS
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 120 0 3 0 {name=M8
L=0.5
W=7
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 120 -70 0 0 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 80 40 0 0 {name=p19 sig_type=std_logic lab=RBIAS
}
C {devices/iopin.sym} -580 -480 0 0 {name=p13 lab=VCC}
C {devices/iopin.sym} -580 20 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -540 -250 0 0 {name=p1 lab=IBIAS}
C {devices/lab_wire.sym} 60 -20 0 0 {name=p2 sig_type=std_logic lab=RP
}
C {devices/lab_wire.sym} 280 -20 0 0 {name=p3 sig_type=std_logic lab=RN
}
C {devices/iopin.sym} 0 -100 0 0 {name=p4 lab=RP}
C {devices/iopin.sym} 250 -100 0 0 {name=p5 lab=RN}
