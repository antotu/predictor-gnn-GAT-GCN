// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
creg meas[3];
rx(-8.246680715673207) q[2];
rxx(pi/2) q[2],q[1];
rx(-pi/2) q[1];
rz(-pi/4) q[1];
rxx(pi/2) q[2],q[1];
ry(-pi/4) q[1];
rx(-pi/4) q[1];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
rz(-pi/8) q[0];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
rz(pi/8) q[0];
rxx(pi/2) q[1],q[0];
rx(-pi/2) q[0];
rz(-pi/4) q[0];
rxx(pi/2) q[1],q[0];
rx(pi/2) q[0];
rz(-pi/4) q[0];
ry(-pi/2) q[1];
ry(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rx(-pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];