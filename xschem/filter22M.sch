v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 10 10 10 {
lab=mid}
N -60 10 -20 10 {
lab=mid}
N 370 80 370 130 {
lab=VCC}
N 370 -70 370 -20 {
lab=VSS}
N 500 30 570 30 {
lab=fil_out}
N 310 80 310 130 {
lab=IBIAS}
N 130 10 200 10 {
lab=op_inb}
N 115 10 130 10 {
lab=op_inb}
N 150 50 200 50 {
lab=fil_out}
N 70 10 115 10 {
lab=op_inb}
N -260 10 -120 10 {
lab=fil_in}
N 245 205 245 260 {
lab=op_inb}
N 455 205 455 260 {
lab=mid}
N 245 380 245 445 {
lab=VSS}
N 460 380 460 445 {
lab=fil_out}
N -15 -55 -15 10 {
lab=mid}
C {devices/opin.sym} 675 30 0 0 {name=p1 lab=fil_out}
C {devices/ipin.sym} -480 20 0 0 {name=p2 lab=fil_in}
C {devices/iopin.sym} 390 85 2 1 {name=p3 lab=vcc}
C {devices/iopin.sym} 400 150 0 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} 560 30 2 1 {name=p5 sig_type=std_logic lab=fil_out}
C {opamp_1.sym} 350 30 2 1 {name=x1}
C {devices/lab_pin.sym} 370 90 2 1 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 370 -60 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 310 90 2 1 {name=p13 sig_type=std_logic lab=IBIAS}
C {sky130_fd_pr/res_generic_po.sym} -90 10 1 0 {name=R1
W=0.5
L=100
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 40 10 1 0 {name=R2
W=0.5
L=100
model=res_generic_po
mult=1}
C {devices/lab_wire.sym} 190 50 2 1 {name=p6 sig_type=std_logic lab=fil_out}
C {devices/lab_wire.sym} -15 -30 2 1 {name=p11 sig_type=std_logic lab=mid}
C {devices/ipin.sym} -475 120 0 0 {name=p12 lab=IBIAS}
C {devices/lab_wire.sym} -160 10 0 0 {name=p14 sig_type=std_logic lab=fil_in}
C {capacitor_array.sym} 350 320 0 0 {name=x2}
C {devices/lab_pin.sym} 245 425 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 165 10 3 1 {name=p15 sig_type=std_logic lab=op_inb}
C {devices/lab_wire.sym} 245 240 0 1 {name=p16 sig_type=std_logic lab=op_inb}
C {devices/lab_wire.sym} 455 230 2 1 {name=p10 sig_type=std_logic lab=mid}
C {devices/lab_wire.sym} 460 415 2 1 {name=p17 sig_type=std_logic lab=fil_out}
