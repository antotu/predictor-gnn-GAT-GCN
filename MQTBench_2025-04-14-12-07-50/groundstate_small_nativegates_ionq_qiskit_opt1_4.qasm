// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(1.626309061292785) q[0];
ry(pi) q[0];
rz(-2.3071543871360847) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
rz(-1.0600033558967024) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
rx(pi/2) q[2];
rz(2.9303059581896607) q[3];
rxx(pi/2) q[0],q[3];
ry(pi/2) q[0];
rz(1.820914919674018) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
ry(-pi/2) q[1];
rz(1.1981080393733468) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rz(-1.0558071912150098) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
rx(pi/2) q[2];
ry(-pi/2) q[3];
rz(-1.6649890842377424) q[3];
rxx(pi/2) q[0],q[3];
rx(1.655989455782068) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-1.948148201109147) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(0.12867179119448477) q[2];
rx(1.12400229413346) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];