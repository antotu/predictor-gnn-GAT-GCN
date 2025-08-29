// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi) q[0];
ry(-2.713014312235757) q[0];
rz(-pi) q[1];
ry(-0.18646004994202578) q[1];
ry(-1.7313423251) q[2];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-0.544473261147584) q[0];
rz(-pi/2) q[1];
ry(0.05384628055162664) q[1];
rz(-pi/2) q[2];
ry(0.6842160604255197) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(1.5569655156383224) q[0];
rz(pi/2) q[1];
ry(-2.543760911667143) q[1];
rz(pi/2) q[2];
ry(-0.935707265326647) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];