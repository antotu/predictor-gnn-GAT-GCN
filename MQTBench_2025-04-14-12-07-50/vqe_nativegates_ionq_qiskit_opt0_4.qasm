// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-2.8426009407545667) q[0];
ry(pi/2) q[0];
ry(5.0611926472248414e-05) q[1];
ry(pi/2) q[1];
ry(1.5577164169918891) q[2];
ry(pi/2) q[2];
ry(-0.21850787179802714) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(0.7520200410162317) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(1.8761309617312827) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(-0.06154246672532181) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(3.0818204702209964) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(2.343688416475078) q[0];
rx(-pi/2) q[1];
ry(1.1467073239156815) q[1];
rx(-pi/2) q[2];
ry(-1.5708478886544195) q[2];
rx(-pi/2) q[3];
ry(-2.922968255839148) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];