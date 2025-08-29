// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg meas[12];
ry(-pi/2) q[0];
ry(-pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(-pi/2) q[2];
ry(-pi/2) q[3];
rzz(pi/2) q[2],q[3];
ry(-pi/2) q[4];
rzz(pi/2) q[0],q[4];
rzz(pi/2) q[1],q[4];
ry(-pi/2) q[5];
rzz(pi/2) q[3],q[5];
ry(-pi/2) q[6];
ry(-pi/2) q[7];
rzz(pi/2) q[5],q[7];
rzz(pi/2) q[6],q[7];
ry(-pi/2) q[8];
rzz(pi/2) q[2],q[8];
ry(-pi/2) q[9];
rzz(pi/2) q[8],q[9];
ry(-pi/2) q[10];
rzz(pi/2) q[9],q[10];
ry(-pi/2) q[11];
rzz(pi/2) q[6],q[11];
rzz(pi/2) q[10],q[11];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
measure q[10] -> meas[10];
measure q[11] -> meas[11];