v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 310 -5 440 -5 {
lab=CAPA_N}
N 190 -5 310 -5 {
lab=CAPA_N}
N 70 -5 190 -5 {
lab=CAPA_N}
N 245 -5 245 60 {
lab=CAPA_N}
N 70 -65 190 -65 {
lab=CAPA_P}
N 190 -65 310 -65 {
lab=CAPA_P}
N 310 -65 440 -65 {
lab=CAPA_P}
N 245 -130 245 -65 {
lab=CAPA_P}
N 775 -5 905 -5 {
lab=CAPB_N}
N 655 -5 775 -5 {
lab=CAPB_N}
N 535 -5 655 -5 {
lab=CAPB_N}
N 710 -5 710 60 {
lab=CAPB_N}
N 535 -65 655 -65 {
lab=CAPB_P}
N 655 -65 775 -65 {
lab=CAPB_P}
N 775 -65 905 -65 {
lab=CAPB_P}
N 710 -130 710 -65 {
lab=CAPB_P}
N 1205 -5 1335 -5 {
lab=CAPB_N}
N 1085 -5 1205 -5 {
lab=CAPB_N}
N 965 -5 1085 -5 {
lab=CAPB_N}
N 1140 -5 1140 60 {
lab=CAPB_N}
N 965 -65 1085 -65 {
lab=CAPB_P}
N 1085 -65 1205 -65 {
lab=CAPB_P}
N 1205 -65 1335 -65 {
lab=CAPB_P}
N 1140 -130 1140 -65 {
lab=CAPB_P}
N 710 -130 1140 -130 {
lab=CAPB_P}
N 710 60 1140 60 {
lab=CAPB_N}
N 935 60 935 135 {
lab=CAPB_N}
N 935 -195 935 -130 {
lab=CAPB_P}
C {devices/lab_wire.sym} 245 -105 0 0 {name=p14 sig_type=std_logic lab=CAPA_P}
C {devices/lab_wire.sym} 245 50 0 0 {name=p1 sig_type=std_logic lab=CAPA_N}
C {devices/lab_wire.sym} 935 -175 0 0 {name=p2 sig_type=std_logic lab=CAPB_P}
C {devices/lab_wire.sym} 935 120 0 0 {name=p3 sig_type=std_logic lab=CAPB_N}
C {devices/iopin.sym} 275 -145 2 1 {name=p4 lab=CAPA_P}
C {devices/iopin.sym} 275 45 2 1 {name=p5 lab=CAPA_N}
C {devices/iopin.sym} 1365 -115 2 1 {name=p6 lab=CAPB_P}
C {devices/iopin.sym} 1365 75 2 1 {name=p7 lab=CAPB_N}
C {sky130_fd_pr/cap_mim_m3_1.sym} 70 -35 0 0 {name=C13 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 175 -35 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 310 -35 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 440 -35 0 0 {name=C3 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 535 -35 0 0 {name=C4 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 -35 0 0 {name=C5 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 765 -35 0 0 {name=C6 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 905 -35 0 0 {name=C7 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 965 -35 0 0 {name=C8 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1075 -35 0 0 {name=C9 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1215 -35 0 0 {name=C10 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1335 -35 0 0 {name=C11 model=cap_mim_m3_1 W=10 L=6 MF=1 spiceprefix=X}
