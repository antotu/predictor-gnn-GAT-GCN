// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(2.1222500047705717) q[0];
ry(-1.5709810626297005) q[1];
ry(-0.48835788537291214) q[2];
ry(-0.27444585132572574) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.6930122709290414) q[0];
rx(-pi/2) q[0];
rz(2.578794830963833) q[1];
rx(-pi) q[1];
rz(-0.47121287981887905) q[2];
rx(-pi) q[2];
rx(-pi/2) q[3];
ry(1.030215322256864) q[3];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-2.4270533287075136) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-0.8041338142881171) q[1];
rx(-pi/2) q[2];
ry(1.5711874275631639) q[2];
rx(-pi/2) q[3];
ry(0.5544098508779367) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];