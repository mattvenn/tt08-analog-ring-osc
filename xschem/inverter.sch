v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 50 -160 60 {
lab=in}
N -160 0 -160 50 {
lab=in}
N -90 0 -70 -0 {
lab=in}
N -160 -0 -90 0 {
lab=in}
N -10 -0 70 0 {
lab=out}
C {devices/opin.sym} 70 0 0 0 {name=p4 lab=out}
C {devices/iopin.sym} -270 -110 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} -270 -80 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} -160 0 0 0 {name=p3 lab=in}
C {devices/capa.sym} -160 90 0 0 {name=C6
m=1
value=10fF
footprint=1206
lvs_ignore=true
device="ceramic capacitor"}
C {devices/lab_pin.sym} -160 120 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_stdcells/inv_2.sym} -50 0 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
