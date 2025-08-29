// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(1.9457690164738404) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
rz(1.5363299890440762) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(1.2455489709484153) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(-1.4163112095467376) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[0],q[3];
rz(-2.761755380166627) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[1],q[3];
rz(2.1449149996365744) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
cz q[2],q[3];
rz(2.1566436351934577) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(2.18325751345027) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[0],q[3];
rz(0.63565178494731) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[1],q[3];
rz(-0.8013656473110968) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[2],q[3];
rz(-3.0281457670428127) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(1.1650714448890351) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];