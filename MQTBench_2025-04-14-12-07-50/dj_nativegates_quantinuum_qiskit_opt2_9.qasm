// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[8];
rz(-pi) q[0];
ry(-pi/2) q[0];
rz(-pi) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[2];
rz(-pi) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[4];
rz(-pi) q[5];
ry(-pi/2) q[5];
rz(-pi) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[7];
rx(pi) q[8];
rzz(pi/2) q[0],q[8];
rz(pi/2) q[0];
ry(-pi/2) q[0];
rz(-3*pi) q[8];
rzz(pi/2) q[1],q[8];
rz(pi/2) q[1];
ry(-pi/2) q[1];
rzz(pi/2) q[2],q[8];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[3],q[8];
rz(pi/2) q[3];
ry(-pi/2) q[3];
rzz(pi/2) q[4],q[8];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rzz(pi/2) q[5],q[8];
rz(pi/2) q[5];
ry(-pi/2) q[5];
rzz(pi/2) q[6],q[8];
rz(pi/2) q[6];
ry(-pi/2) q[6];
rzz(pi/2) q[7],q[8];
rz(-pi/2) q[7];
ry(pi/2) q[7];
ry(pi/2) q[8];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];