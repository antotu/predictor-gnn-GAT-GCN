// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-pi/4) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(-0.9553166181245093) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(-pi/3) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(pi) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/3) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[1];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
ry(0.9553166181245093) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/4) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rx(-pi/2) q[1];
rx(-pi/2) q[2];
rx(-pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];