v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -100 120 -30 {
lab=DIFF_OUT}
N -0 -100 0 -30 {
lab=MIRR}
N 0 0 120 -0 {
lab=VSS}
N 120 30 120 60 {
lab=TAILV}
N 0 60 120 60 {
lab=TAILV}
N 0 30 0 60 {
lab=TAILV}
N 70 60 70 80 {
lab=TAILV}
N 70 110 120 110 {
lab=VSS}
N 70 140 70 200 {
lab=VSS}
N -40 110 30 110 {
lab=IBIAS}
N 40 -130 80 -130 {
lab=MIRR}
N 60 -130 60 -80 {
lab=MIRR}
N 0 -80 60 -80 {
lab=MIRR}
N 230 -60 360 -60 {
lab=DIFF_OUT}
N -110 0 -40 0 {
lab=INA}
N 160 -0 210 0 {
lab=INB}
N 120 -130 210 -130 {
lab=VCC}
N -110 -130 0 -130 {
lab=VCC}
N 120 -200 120 -160 {
lab=VCC}
N -0 -200 120 -200 {
lab=VCC}
N -0 -200 -0 -160 {
lab=VCC}
N 60 -270 60 -200 {
lab=VCC}
N 120 110 120 200 {
lab=VSS}
N 70 200 120 200 {
lab=VSS}
N 300 110 360 110 {
lab=IBIAS}
N 400 140 400 200 {
lab=VSS}
N 230 200 400 200 {
lab=VSS}
N 400 110 440 110 {
lab=VSS}
N 440 110 440 200 {
lab=VSS}
N 400 200 440 200 {
lab=VSS}
N 400 -30 400 80 {
lab=OUT}
N 400 -200 400 -90 {
lab=VCC}
N 230 -200 400 -200 {
lab=VCC}
N 400 20 520 20 {
lab=OUT}
N 400 -60 430 -60 {
lab=VCC}
N 430 -200 430 -60 {
lab=VCC}
N 400 -200 430 -200 {
lab=VCC}
N 120 -60 230 -60 {
lab=DIFF_OUT}
N 120 -200 230 -200 {
lab=VCC}
N 120 200 230 200 {
lab=VSS}
N 370 40 400 40 {
lab=OUT}
N 290 40 310 40 {
lab=#net1}
N 230 -60 230 40 {
lab=DIFF_OUT}
N -210 110 -160 110 {
lab=VSS}
N -210 140 -210 200 {
lab=VSS}
N -320 110 -250 110 {
lab=IBIAS}
N -160 110 -160 200 {
lab=VSS}
N -210 200 -160 200 {
lab=VSS}
N -210 0 -210 80 {
lab=RBIAS}
N -210 -80 -210 -60 {
lab=#net2}
N -250 -30 -210 -30 {
lab=VCC}
N -250 -110 -250 -30 {
lab=VCC}
N -250 -110 -210 -110 {
lab=VCC}
N -170 -110 -170 -70 {
lab=#net2}
N -210 -70 -170 -70 {
lab=#net2}
N -170 -30 -170 20 {
lab=RBIAS}
N -210 20 -170 20 {
lab=RBIAS}
N -210 -270 -210 -140 {
lab=VCC}
N -250 -200 -250 -110 {
lab=VCC}
N -250 -200 -210 -200 {
lab=VCC}
N 260 -10 260 40 {
lab=VCC}
N 240 100 260 80 {
lab=RBIAS}
N 200 100 240 100 {
lab=RBIAS}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
L=1
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 140 0 0 1 {name=M2
L=1
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 50 110 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -130 0 1 {name=M4
L=0.5
W=14
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -130 0 0 {name=M5
L=0.5
W=14
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
C {devices/lab_wire.sym} -80 0 0 0 {name=p1 sig_type=std_logic lab=INA}
C {devices/lab_wire.sym} 70 0 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -130 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 200 -130 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 60 -240 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 70 180 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 110 0 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 190 0 0 0 {name=p8 sig_type=std_logic lab=INB}
C {devices/lab_wire.sym} 180 -60 0 0 {name=p9 sig_type=std_logic lab=DIFF_OUT}
C {devices/ipin.sym} -540 -50 0 0 {name=p10 lab=INA}
C {devices/ipin.sym} -540 -20 0 0 {name=p11 lab=INB}
C {devices/opin.sym} 740 -190 0 0 {name=p12 lab=OUT}
C {devices/iopin.sym} -440 -290 0 0 {name=p13 lab=VCC}
C {devices/iopin.sym} -440 210 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -540 90 0 0 {name=p15 lab=IBIAS}
C {sky130_fd_pr/nfet_01v8.sym} 380 110 0 0 {name=M6
L=0.5
W=93
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 380 -60 0 0 {name=M7
L=0.5
W=70
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
C {devices/lab_wire.sym} 510 20 0 0 {name=p16 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 340 110 0 0 {name=p17 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} -210 180 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 110 0 0 {name=p21 sig_type=std_logic lab=IBIAS}
C {sky130_fd_pr/nfet_01v8.sym} -230 110 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -190 -30 0 1 {name=M10
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -190 -110 0 1 {name=M11
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
C {devices/lab_wire.sym} -210 -220 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} -210 50 0 0 {name=p23 sig_type=std_logic lab=RBIAS
}
C {devices/lab_wire.sym} 0 -50 0 0 {name=p24 sig_type=std_logic lab=MIRR}
C {devices/lab_wire.sym} 40 60 0 0 {name=p25 sig_type=std_logic lab=TAILV}
C {sky130_fd_pr/cap_mim_m3_2.sym} 340 40 1 0 {name=C1 model=cap_mim_m3_2 W=20 L=13 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 260 60 3 0 {name=M8
L=0.5
W=14
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
C {devices/lab_wire.sym} 260 -10 0 0 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 220 100 0 0 {name=p19 sig_type=std_logic lab=RBIAS
}
