// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas253[3];
ry(-pi/2) q[0];
rz(-0.20542619769269166) q[0];
ry(-pi/2) q[1];
rz(-0.19751513392594688) q[1];
rzz(3.3463632834802244) q[0],q[1];
ry(-pi/2) q[2];
rz(-0.23787283876519716) q[2];
rzz(3.345323262439012) q[0],q[2];
rx(14.274640455219028) q[0];
rz(3.2845805835557274) q[0];
rzz(3.3479272573828793) q[1],q[2];
rx(14.274640455219028) q[1];
rz(3.27681709981151) q[1];
rzz(-3.283937245298555) q[0],q[1];
rx(14.274640455219028) q[2];
rz(3.316421936115639) q[2];
rzz(-3.2829166257352242) q[0],q[2];
rx(6.4239324229758505) q[0];
rz(3.4113084868184274) q[0];
rzz(-3.285472043440454) q[1],q[2];
rx(6.4239324229758505) q[1];
rz(3.4032454671085395) q[1];
rzz(-3.4106403268507366) q[0],q[1];
rx(6.4239324229758505) q[2];
rz(3.4443783639172616) q[2];
rzz(-3.409580329055087) q[0],q[2];
rx(-6.893098723435331) q[0];
rzz(-3.4122343416096452) q[1],q[2];
rx(-6.893098723435331) q[1];
rx(-6.893098723435331) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas253[0];
measure q[1] -> meas253[1];
measure q[2] -> meas253[2];