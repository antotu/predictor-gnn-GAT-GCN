// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(-pi/2) q[0];
ry(1.571573766506034) q[1];
ry(2.761104411695836) q[2];
ry(-2.4157084146903522) q[3];
ry(0.4794316823270933) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-3.141458615076342) q[0];
rx(-pi/2) q[0];
rz(1.5713023963718573) q[1];
rx(-pi/2) q[1];
rz(0.8083085543685291) q[2];
rx(-pi/2) q[2];
rz(2.2372200228493497) q[3];
rx(-pi/2) q[3];
rx(-pi/2) q[4];
ry(0.3744018555478049) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
ry(pi/2) q[0];
rz(pi/2) q[0];
rx(-pi/2) q[1];
ry(-3.1413603461565924) q[1];
rx(-pi/2) q[2];
ry(2.7993128140555896) q[2];
rx(-pi/2) q[3];
ry(0.5893315061371266) q[3];
rx(-pi/2) q[4];
ry(3.119132765616326) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];