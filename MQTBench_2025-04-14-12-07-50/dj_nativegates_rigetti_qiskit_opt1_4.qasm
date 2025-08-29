// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[3];
rz(-pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rx(pi) q[3];
cz q[0],q[3];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(-pi/2) q[0];
cz q[1],q[3];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(-pi/2) q[1];
cz q[2],q[3];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];