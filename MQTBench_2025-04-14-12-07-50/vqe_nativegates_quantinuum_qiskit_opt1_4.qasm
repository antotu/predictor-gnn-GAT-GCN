// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-0.0003264310225368318) q[0];
rz(-pi) q[0];
ry(-2.415786460851331) q[1];
rz(-pi) q[1];
ry(-3.1415437922446188) q[2];
rx(-pi) q[2];
rz(-pi) q[3];
ry(-2.406325448041949) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-3.1408322842425047) q[0];
rz(-pi/2) q[1];
ry(-1.5707589834515543) q[1];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rz(-pi/2) q[3];
ry(-0.7360806797928336) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(-0.0011001902791738813) q[0];
rz(pi/2) q[1];
ry(2.296145684907782) q[1];
rz(pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[3];
ry(-0.0009753881155748885) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];