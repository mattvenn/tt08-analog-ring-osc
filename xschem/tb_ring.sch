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
x1=1.5625e-17
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
B 2 -220 880 580 1280 {flags=graph
y1=1.4e-17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-17
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ring_out_parax
out_parax
pre_drive_parax"
color="10 6 15"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -220 1340 580 1740 {flags=graph
y1=1.4e-17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-17
x2=5e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ring_out_2
out_2
pre_drive_2"
color="10 6 15"
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
N -1070 -100 -1070 -90 {
lab=vdd}
N -1070 -30 -1070 -20 {
lab=GND}
N -820 260 -800 260 {
lab=GND}
N -820 240 -800 240 {
lab=vdd}
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
N -820 360 -810 360 {
lab=vdd}
N -820 380 -800 380 {
lab=GND}
N -1380 260 -1360 260 {
lab=GND}
N -1380 240 -1360 240 {
lab=vdd}
N -1380 280 -1380 320 {
lab=pre_drive_parax}
N -1690 320 -1380 320 {
lab=pre_drive_parax}
N -1690 320 -1690 360 {
lab=pre_drive_parax}
N -1690 360 -1680 360 {
lab=pre_drive_parax}
N -1380 400 -1380 440 {
lab=ring_out_parax}
N -1380 360 -1370 360 {
lab=vdd}
N -1380 380 -1360 380 {
lab=GND}
N -1380 440 -1380 480 {
lab=ring_out_parax}
N -820 440 -820 480 {
lab=ring_out}
N -1380 740 -1360 740 {
lab=GND}
N -1380 720 -1360 720 {
lab=vdd}
N -1380 760 -1380 800 {
lab=pre_drive_2}
N -1690 800 -1380 800 {
lab=pre_drive_2}
N -1690 800 -1690 840 {
lab=pre_drive_2}
N -1690 840 -1680 840 {
lab=pre_drive_2}
N -1380 880 -1380 920 {
lab=ring_out_2}
N -1380 840 -1370 840 {
lab=vdd}
N -1380 860 -1360 860 {
lab=GND}
N -1380 920 -1380 960 {
lab=ring_out_2}
C {devices/lab_pin.sym} -1120 480 0 0 {name=p5 sig_type=std_logic lab=out}
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
C {devices/vsource.sym} -1070 -60 0 0 {name=V10 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1070 -20 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -1070 -100 2 1 {name=p19 sig_type=std_logic lab=vdd
}
C {pad_model.sym} -970 500 0 0 {name=x10}
C {devices/gnd.sym} -1120 520 0 0 {name=l8 lab=GND}
C {ring.sym} -970 260 0 0 {name=x1}
C {devices/gnd.sym} -800 260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -800 240 0 1 {name=p1 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -1120 240 0 0 {name=p2 sig_type=std_logic lab=enable
}
C {devices/vsource.sym} -890 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -820 480 0 1 {name=p3 sig_type=std_logic lab=ring_out
}
C {driver.sym} -970 380 0 0 {name=x2}
C {devices/lab_pin.sym} -810 360 0 1 {name=p4 sig_type=std_logic lab=vdd
}
C {devices/gnd.sym} -800 380 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -820 320 0 1 {name=p6 sig_type=std_logic lab=pre_drive
}
C {devices/lab_pin.sym} -1680 480 0 0 {name=p7 sig_type=std_logic lab=out_parax}
C {pad_model.sym} -1530 500 0 0 {name=x3}
C {devices/gnd.sym} -1680 520 0 0 {name=l3 lab=GND}
C {ring.sym} -1530 260 0 0 {name=x4
schematic=ring_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ring.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ring.sim.spice]"}
C {devices/gnd.sym} -1360 260 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -1360 240 0 1 {name=p8 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -1680 240 0 0 {name=p10 sig_type=std_logic lab=enable
}
C {devices/lab_pin.sym} -1380 480 0 1 {name=p11 sig_type=std_logic lab=ring_out_parax
}
C {driver.sym} -1530 380 0 0 {name=x5}
C {devices/lab_pin.sym} -1370 360 0 1 {name=p12 sig_type=std_logic lab=vdd
}
C {devices/gnd.sym} -1360 380 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -1380 320 0 1 {name=p13 sig_type=std_logic lab=pre_drive_parax
}
C {devices/lab_pin.sym} -1680 960 0 0 {name=p14 sig_type=std_logic lab=out_2}
C {pad_model.sym} -1530 980 0 0 {name=x6}
C {devices/gnd.sym} -1680 1000 0 0 {name=l7 lab=GND}
C {ring_2.sym} -1530 740 0 0 {name=x7}
C {devices/gnd.sym} -1360 740 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -1360 720 0 1 {name=p15 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -1680 720 0 0 {name=p16 sig_type=std_logic lab=enable
}
C {devices/lab_pin.sym} -1380 960 0 1 {name=p17 sig_type=std_logic lab=ring_out_2
}
C {driver.sym} -1530 860 0 0 {name=x8}
C {devices/lab_pin.sym} -1370 840 0 1 {name=p18 sig_type=std_logic lab=vdd
}
C {devices/gnd.sym} -1360 860 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -1380 800 0 1 {name=p20 sig_type=std_logic lab=pre_drive_2
}
