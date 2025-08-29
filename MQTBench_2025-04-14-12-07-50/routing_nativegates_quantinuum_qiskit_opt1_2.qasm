// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-1.9680398287547598) q[0];
rz(-pi) q[0];
rz(-pi) q[1];
ry(-1.5707963282266566) q[1];
rzz(pi/2) q[0],q[1];
rx(-3.1415926353837174) q[0];
rz(-pi/2) q[0];
rx(3.141592652874462) q[1];
rz(-pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-1.1735467062679128) q[0];
rz(-pi/2) q[1];
ry(pi) q[1];
rzz(pi/2) q[0],q[1];
rx(3.1415926404193453) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
ry(-1.5707963343872853) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];