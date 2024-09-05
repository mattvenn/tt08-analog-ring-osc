v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -220 420 580 820 {flags=graph
y1=1.4e-17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.25e-16
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="enable
ring_out
out
pre_drive"
color="4 10 6 15"
dataset=-1
unitx=1
logx=0
logy=0
}
N -890 -40 -890 -20 {
lab=GND}
N -920 -120 -890 -120 {
lab=enable}
N -890 -120 -890 -100 {
lab=enable}
N -1460 -120 -1460 -110 {
lab=vdd}
N -1460 -50 -1460 -40 {
lab=GND}
N -590 550 -420 550 {
lab=ring_out}
N -790 440 -600 440 {
lab=ring_out}
N -600 550 -590 550 {
lab=ring_out}
N -820 260 -800 260 {
lab=GND}
N -820 240 -800 240 {
lab=vdd}
N -420 550 -420 590 {
lab=ring_out}
N -600 440 -600 550 {
lab=ring_out}
N -820 280 -820 320 {
lab=pre_drive}
N -1130 320 -820 320 {
lab=pre_drive}
N -1130 320 -1130 360 {
lab=pre_drive}
N -1130 360 -1120 360 {
lab=pre_drive}
N -820 400 -820 440 {
lab=ring_out}
N -820 440 -790 440 {
lab=ring_out}
N -820 360 -810 360 {
lab=vdd}
N -820 380 -800 380 {
lab=GND}
C {devices/lab_pin.sym} -720 590 0 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code.sym} -1060 780 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/gnd.sym} -890 -20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -920 -120 0 0 {name=p9 sig_type=std_logic lab=enable
}
C {devices/launcher.sym} -580 880 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ring.raw tran"
}
C {devices/code.sym} -900 780 0 0 {name=SIMULATION
only_toplevel=false 
value="
* .options filetype=ascii
.options method=GEAR RELTOL=0.01 ABSTOL=1.0e-9
.control
*tran 1n 128n uic
tran 0.1p 5n uic
write tb_ring.raw
.endc
.end
"}
C {devices/vsource.sym} -1460 -80 0 0 {name=V10 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1460 -40 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -1460 -120 2 1 {name=p19 sig_type=std_logic lab=vdd
}
C {pad_model.sym} -570 610 0 0 {name=x10}
C {devices/gnd.sym} -720 630 0 0 {name=l8 lab=GND}
C {ring.sym} -970 260 0 0 {name=x1}
C {devices/gnd.sym} -800 260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -800 240 0 1 {name=p1 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -1120 240 0 0 {name=p2 sig_type=std_logic lab=enable
}
C {devices/vsource.sym} -890 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -600 440 0 1 {name=p3 sig_type=std_logic lab=ring_out
}
C {driver.sym} -970 380 0 0 {name=x2}
C {devices/lab_pin.sym} -810 360 0 1 {name=p4 sig_type=std_logic lab=vdd
}
C {devices/gnd.sym} -800 380 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -820 320 0 1 {name=p6 sig_type=std_logic lab=pre_drive
}
