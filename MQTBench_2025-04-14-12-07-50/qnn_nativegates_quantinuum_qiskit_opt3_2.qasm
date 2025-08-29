// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-pi/2) q[0];
rz(0.42920367320510344) q[0];
rx(2.0) q[1];
rzz(pi/2) q[0],q[1];
ry(2.889652880639957) q[1];
rz(-4.283185307179587) q[1];
rzz(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rz(-5.853981633974478) q[0];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(2.889652880639957) q[1];
rz(-pi) q[1];
rzz(pi/2) q[0],q[1];
ry(-0.08455156147644054) q[0];
ry(-0.3700552434044611) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(0.8594510618725919) q[0];
rz(pi/2) q[1];
ry(1.7953793233207758) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];