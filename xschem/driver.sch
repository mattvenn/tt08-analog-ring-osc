v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -20 -70 20 {
lab=#net1}
N -110 -50 -110 50 {
lab=in}
N -70 10 30 10 {
lab=#net1}
N -70 -100 -70 -80 {
lab=VDD}
N -70 80 -70 100 {
lab=VSS}
N -70 50 10 50 {
lab=VSS}
N 10 50 10 100 {
lab=VSS}
N -70 100 10 100 {
lab=VSS}
N -70 -50 10 -50 {
lab=VDD}
N 10 -100 10 -50 {
lab=VDD}
N -70 -100 10 -100 {
lab=VDD}
N 90 -20 90 20 {
lab=out}
N 50 -50 50 50 {
lab=#net1}
N 90 10 190 10 {
lab=out}
N 90 -100 90 -80 {
lab=VDD}
N 90 80 90 100 {
lab=VSS}
N 90 50 170 50 {
lab=VSS}
N 170 50 170 100 {
lab=VSS}
N 90 100 170 100 {
lab=VSS}
N 90 -50 170 -50 {
lab=VDD}
N 170 -100 170 -50 {
lab=VDD}
N 90 -100 170 -100 {
lab=VDD}
N 30 10 50 10 {
lab=#net1}
N 210 10 250 10 {
lab=out}
N -70 -20 -70 20 {
lab=#net1}
N -110 -50 -110 50 {
lab=in}
N -200 10 -110 10 {
lab=in}
N -70 10 30 10 {
lab=#net1}
N -70 -100 -70 -80 {
lab=VDD}
N -70 80 -70 100 {
lab=VSS}
N -70 50 10 50 {
lab=VSS}
N 10 50 10 100 {
lab=VSS}
N -70 100 10 100 {
lab=VSS}
N -70 -50 10 -50 {
lab=VDD}
N 10 -100 10 -50 {
lab=VDD}
N -70 -100 10 -100 {
lab=VDD}
N 90 -20 90 20 {
lab=out}
N 50 -50 50 50 {
lab=#net1}
N 90 10 190 10 {
lab=out}
N 90 -100 90 -80 {
lab=VDD}
N 90 80 90 100 {
lab=VSS}
N 90 50 170 50 {
lab=VSS}
N 170 50 170 100 {
lab=VSS}
N 90 100 170 100 {
lab=VSS}
N 90 -50 170 -50 {
lab=VDD}
N 170 -100 170 -50 {
lab=VDD}
N 90 -100 170 -100 {
lab=VDD}
N 30 10 50 10 {
lab=#net1}
N 210 10 250 10 {
lab=out}
N 190 10 210 10 {
lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -90 -50 0 0 {name=M9
L=0.15
W=9
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
C {sky130_fd_pr/nfet_01v8.sym} -90 50 0 0 {name=M10
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -70 -100 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 100 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 70 -50 0 0 {name=M11
L=0.15
W=72
nf=8
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
C {sky130_fd_pr/nfet_01v8.sym} 70 50 0 0 {name=M12
L=0.15
W=24
nf=8 
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
C {devices/lab_pin.sym} 90 -100 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 100 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -290 -130 0 0 {name=p5 lab=VDD
}
C {devices/iopin.sym} -290 -100 0 0 {name=p6 lab=VSS
}
C {devices/opin.sym} 250 10 0 0 {name=p7 lab=out}
C {devices/ipin.sym} -200 10 0 0 {name=p8 lab=in}
