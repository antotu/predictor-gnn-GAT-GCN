// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.4368347742816618) q[0];
rz(-pi) q[0];
ry(-1.4404079834845707) q[1];
rz(-pi) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-pi) q[2];
ry(-2.410532952814156) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
ry(1.5783117544539516) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(-1.5614156084307327) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-pi/2) q[2];
ry(-1.4124389803026796) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
ry(-1.2444656817555664) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(3.0754262374271595) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-pi/2) q[2];
ry(-1.062554723574571) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[0];
ry(0.5550554224571165) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(pi/2) q[1];
ry(-1.9769425662797726) q[1];
rz(pi/2) q[2];
ry(1.277958084390116) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];