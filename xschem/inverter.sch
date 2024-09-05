v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -30 -30 10 {
lab=out}
N -70 -60 -70 40 {
lab=in}
N -30 0 70 0 {
lab=out}
N -30 -110 -30 -90 {
lab=VDD}
N -30 70 -30 90 {
lab=VSS}
N -30 40 50 40 {
lab=VSS}
N 50 40 50 90 {
lab=VSS}
N -30 90 50 90 {
lab=VSS}
N -30 -60 50 -60 {
lab=VDD}
N 50 -110 50 -60 {
lab=VDD}
N -30 -110 50 -110 {
lab=VDD}
N -160 0 -70 0 {
lab=in}
N -160 50 -160 60 {
lab=in}
N -160 0 -160 50 {
lab=in}
C {devices/opin.sym} 70 0 0 0 {name=p4 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -50 -60 0 0 {name=M1
L=0.15
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -50 40 0 0 {name=M2
L=0.15
W=1
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
C {devices/lab_pin.sym} -30 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -30 90 0 0 {name=p6 sig_type=std_logic lab=VSS}
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
