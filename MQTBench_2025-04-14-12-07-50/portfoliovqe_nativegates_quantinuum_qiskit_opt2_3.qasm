// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-2.9882137751024946) q[0];
ry(1.7532368566017023) q[1];
rzz(pi/2) q[0],q[1];
rz(pi) q[1];
ry(-1.1120576495431564) q[2];
rzz(pi/2) q[0],q[2];
ry(0.34510991809366) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(-2.383567616140432) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi) q[0];
rz(pi) q[1];
ry(0.7745779766300902) q[2];
rzz(pi/2) q[0],q[2];
ry(2.919303201293508) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(0.3620984526853443) q[1];
rzz(pi/2) q[0],q[1];
rz(pi) q[1];
ry(0.38569163098207176) q[2];
rzz(pi/2) q[0],q[2];
ry(0.377652395046741) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(2.740648426917575) q[1];
ry(-1.9080124345520117) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];