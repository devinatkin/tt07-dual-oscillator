v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 565 555 585 555 {
lab=RN}
N 110 250 110 290 {
lab=MIRR}
N 150 250 150 290 {
lab=DIFF_OUT}
N -70 320 -20 320 {
lab=INA}
N 280 320 340 320 {
lab=INB}
N 20 410 20 460 {
lab=VSS}
N 130 410 130 460 {
lab=TAILV}
N 40 250 110 250 {
lab=MIRR}
N 150 250 210 250 {
lab=DIFF_OUT}
N 30 250 40 250 {
lab=MIRR}
N 30 190 30 250 {
lab=MIRR}
N 30 55 30 90 {
lab=VCC}
N 395 320 465 320 {
lab=IBIAS}
N 615 250 615 290 {
lab=VCC}
N 765 260 765 320 {
lab=DIFF_OUT}
N 765 380 765 450 {
lab=RN}
N 615 410 615 450 {
lab=VSS}
N 485 555 565 555 {
lab=RN}
N 210 250 250 250 {
lab=DIFF_OUT}
N 250 190 250 250 {
lab=DIFF_OUT}
N 645 555 685 555 {
lab=OUT}
N 125 635 125 680 {
lab=VSS}
N 125 500 125 555 {
lab=TAILV}
N -110 585 -25 585 {
lab=IBIAS}
N 390 80 450 80 {
lab=DIFF_OUT}
N 390 100 450 100 {
lab=IBIAS}
N 600 5 600 50 {
lab=VCC}
N 600 150 600 200 {
lab=VSS}
N 750 100 815 100 {
lab=OUT}
C {devices/lab_wire.sym} -40 320 0 0 {name=p1 sig_type=std_logic lab=INA}
C {devices/lab_wire.sym} 125 670 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -65 585 0 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 320 320 0 0 {name=p8 sig_type=std_logic lab=INB}
C {devices/ipin.sym} -355 375 0 0 {name=p10 lab=INA}
C {devices/ipin.sym} -355 405 0 0 {name=p11 lab=INB}
C {devices/opin.sym} 860 105 0 0 {name=p12 lab=OUT}
C {devices/iopin.sym} -255 135 0 0 {name=p13 lab=VCC}
C {devices/iopin.sym} -255 635 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} -355 515 0 0 {name=p15 lab=IBIAS}
C {devices/lab_wire.sym} 130 440 0 0 {name=p25 sig_type=std_logic lab=TAILV}
C {indiff.sym} 130 350 0 0 {name=x1}
C {devices/lab_wire.sym} 20 440 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 125 525 0 0 {name=p2 sig_type=std_logic lab=TAILV}
C {devices/lab_wire.sym} 80 250 0 0 {name=p27 sig_type=std_logic lab=MIRR}
C {devices/lab_wire.sym} 200 250 0 0 {name=p28 sig_type=std_logic lab=DIFF_OUT}
C {activeload.sym} 140 140 0 0 {name=x2}
C {devices/lab_wire.sym} 30 70 0 0 {name=p29 sig_type=std_logic lab=VCC}
C {active-resistor.sym} 615 350 0 0 {name=x3}
C {devices/lab_wire.sym} 615 440 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 615 270 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 435 320 0 0 {name=p20 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 765 280 0 0 {name=p18 sig_type=std_logic lab=DIFF_OUT}
C {devices/lab_wire.sym} 525 555 0 0 {name=p19 sig_type=std_logic lab=RN}
C {devices/lab_wire.sym} 765 430 0 0 {name=p21 sig_type=std_logic lab=RN}
C {tail_current.sym} 125 595 0 0 {name=x4}
C {devices/lab_wire.sym} 680 555 0 0 {name=p23 sig_type=std_logic lab=OUT}
C {second_stage.sym} 600 100 0 0 {name=x5}
C {devices/lab_wire.sym} 600 190 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 30 0 0 {name=p30 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 435 100 0 0 {name=p31 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 440 80 0 0 {name=p32 sig_type=std_logic lab=DIFF_OUT}
C {devices/lab_wire.sym} 800 100 0 0 {name=p33 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} 615 555 3 0 {name=C2 model=cap_mim_m3_1 W=20 L=13 MF=1 spiceprefix=X}
