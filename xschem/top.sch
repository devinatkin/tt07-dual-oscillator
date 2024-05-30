v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 690 -290 690 -260 {
lab=VCC}
N 690 -160 690 -130 {
lab=VSS}
N 840 -210 880 -210 {
lab=OSCA}
N 690 -90 690 -50 {
lab=VCC}
N 690 50 690 100 {
lab=VSS}
N 840 0 890 0 {
lab=OSCB}
N 880 -210 910 -210 {
lab=OSCA}
N 890 0 960 0 {
lab=OSCB}
N 230 -180 230 -130 {
lab=VCC}
N 380 -80 440 -80 {
lab=IBIAS}
N 230 -30 230 30 {
lab=VSS}
N 1860 -20 1925 -20 {
lab=FIL_OUTB}
N 1715 -105 1715 -50 {
lab=VCC}
N 1715 50 1715 110 {
lab=VSS}
N 1860 -230 1915 -230 {
lab=FIL_OUTA}
N 1715 -160 1715 -120 {
lab=VSS}
N 1715 -310 1715 -260 {
lab=VCC}
N 1485 -230 1560 -230 {
lab=OSCA_BUF}
N 1485 -190 1560 -190 {
lab=IBIAS}
N 1485 -20 1560 -20 {
lab=OSCB_BUF}
N 1485 20 1560 20 {
lab=IBIAS}
N 990 -205 1040 -205 {
lab=IBIAS}
N 990 -240 1040 -240 {
lab=OSCA}
N 1190 -170 1190 -135 {
lab=VSS}
N 1195 -365 1195 -320 {
lab=VCC}
N 1340 -240 1405 -240 {
lab=OSCA_BUF}
N 1020 35 1070 35 {
lab=IBIAS}
N 1020 0 1070 0 {
lab=OSCB}
N 1220 70 1220 105 {
lab=VSS}
N 1225 -125 1225 -80 {
lab=VCC}
N 1370 0 1435 0 {
lab=OSCB_BUF}
N 2095 -190 2145 -190 {
lab=IBIAS}
N 2095 -225 2145 -225 {
lab=FIL_OUTA}
N 2295 -155 2295 -120 {
lab=VSS}
N 2300 -350 2300 -305 {
lab=VCC}
N 2445 -225 2510 -225 {
lab=OUTA}
N 2090 55 2140 55 {
lab=IBIAS}
N 2090 20 2140 20 {
lab=FIL_OUTB}
N 2290 90 2290 125 {
lab=VSS}
N 2295 -105 2295 -60 {
lab=VCC}
N 2440 20 2505 20 {
lab=OUTB}
C {devices/iopin.sym} -150 -120 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} -150 -60 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} -70 -80 0 0 {name=p4 lab=OUTA}
C {devices/opin.sym} -70 -60 0 0 {name=p3 lab=OUTB}
C {oscillator_20MHZ.sym} 690 -210 0 0 {name=x1}
C {oscillator_21MHZ.sym} 690 0 0 0 {name=x2}
C {devices/lab_wire.sym} 690 -280 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 880 -210 0 0 {name=p6 sig_type=std_logic lab=OSCA}
C {devices/lab_wire.sym} 690 -140 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -70 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 890 0 0 0 {name=p9 sig_type=std_logic lab=OSCB}
C {devices/lab_wire.sym} 690 80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -160 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 410 -80 1 0 {name=p22 sig_type=std_logic lab=IBIAS}
C {current_source.sym} 230 -80 0 0 {name=x5}
C {devices/lab_pin.sym} 230 0 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {filter22M.sym} 1710 -210 0 0 {name=x6}
C {filter22M.sym} 1710 0 0 0 {name=x7}
C {devices/lab_wire.sym} 1910 -20 0 0 {name=p25 sig_type=std_logic lab=FIL_OUTB}
C {devices/lab_wire.sym} 1910 -230 0 0 {name=p26 sig_type=std_logic lab=FIL_OUTA}
C {devices/lab_wire.sym} 1535 -190 0 0 {name=p28 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 1535 20 0 0 {name=p29 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 1715 -290 0 0 {name=p30 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1715 -70 0 0 {name=p31 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1715 -135 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1715 90 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1195 -340 0 0 {name=p36 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1190 -150 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1025 -205 0 0 {name=p40 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 1020 -240 0 0 {name=p34 sig_type=std_logic lab=OSCA}
C {devices/lab_wire.sym} 1400 -240 0 0 {name=p35 sig_type=std_logic lab=OSCA_BUF}
C {devices/lab_wire.sym} 1525 -230 0 0 {name=p46 sig_type=std_logic lab=OSCA_BUF}
C {devices/lab_wire.sym} 1535 -20 0 0 {name=p47 sig_type=std_logic lab=OSCB_BUF}
C {analog_buffer.sym} 1190 -220 0 0 {name=x10}
C {devices/lab_wire.sym} 1225 -100 0 0 {name=p37 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 1220 90 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1055 35 0 0 {name=p41 sig_type=std_logic lab=IBIAS}
C {analog_buffer.sym} 1220 20 0 0 {name=x8}
C {devices/lab_wire.sym} 1430 0 0 0 {name=p42 sig_type=std_logic lab=OSCB_BUF}
C {devices/lab_wire.sym} 1060 0 0 0 {name=p43 sig_type=std_logic lab=OSCB}
C {devices/lab_wire.sym} 2300 -325 0 0 {name=p44 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 2295 -135 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2130 -190 0 0 {name=p48 sig_type=std_logic lab=IBIAS}
C {analog_buffer.sym} 2295 -205 0 0 {name=x9}
C {devices/lab_wire.sym} 2130 -225 0 0 {name=p49 sig_type=std_logic lab=FIL_OUTA}
C {devices/lab_wire.sym} 2495 -225 0 0 {name=p50 sig_type=std_logic lab=OUTA}
C {devices/lab_wire.sym} 2295 -80 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_wire.sym} 2290 110 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2125 55 0 0 {name=p16 sig_type=std_logic lab=IBIAS}
C {analog_buffer.sym} 2290 40 0 0 {name=x3}
C {devices/lab_wire.sym} 2120 20 0 0 {name=p17 sig_type=std_logic lab=FIL_OUTB}
C {devices/lab_wire.sym} 2490 20 0 0 {name=p19 sig_type=std_logic lab=OUTB}
