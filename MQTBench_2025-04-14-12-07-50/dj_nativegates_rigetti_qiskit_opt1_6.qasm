// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[5];
rz(-pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rx(pi) q[5];
cz q[0],q[5];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(-pi/2) q[0];
cz q[1],q[5];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(-pi/2) q[1];
cz q[2],q[5];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[3],q[5];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(-pi/2) q[3];
cz q[4],q[5];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];