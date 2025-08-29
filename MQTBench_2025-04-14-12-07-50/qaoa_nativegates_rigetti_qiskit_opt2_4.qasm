// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[0],q[1];
rx(1.5707180427106755) q[1];
cz q[0],q[1];
rz(-pi/2) q[1];
rx(-pi/2) q[1];
cz q[0],q[2];
rx(1.5707180427106755) q[2];
cz q[0],q[2];
rx(-3.9269619010789505) q[0];
rz(-pi/2) q[2];
rx(-pi/2) q[2];
cz q[1],q[3];
rx(1.5707180427106755) q[3];
cz q[1],q[3];
rx(pi/2) q[1];
rz(-2.356165574284054) q[1];
cz q[0],q[1];
rx(-2.356140313042034) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[2],q[3];
rx(1.5707180427106755) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(-2.356165574284054) q[2];
cz q[0],q[2];
rx(-2.356140313042034) q[2];
cz q[0],q[2];
rx(-7.854013547463692) q[0];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(2.3562234061006357) q[3];
cz q[1],q[3];
rx(-2.356140313042034) q[3];
cz q[1],q[3];
rx(-7.854013547463692) q[1];
cz q[2],q[3];
rx(-2.356140313042034) q[3];
cz q[2],q[3];
rx(-7.854013547463692) q[2];
rz(-3.191348920950077e-05) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];