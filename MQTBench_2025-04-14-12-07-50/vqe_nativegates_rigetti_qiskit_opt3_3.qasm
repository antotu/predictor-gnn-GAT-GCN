// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi/2) q[0];
rx(-1.716899419923983) q[0];
rz(-pi/2) q[1];
rx(-1.7292092066531815) q[1];
rz(-pi/2) q[2];
rx(1.1649902616483705) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-1.7287281413058893) q[0];
rx(1.4040287255045738) q[1];
rx(2.48688268723528) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(1.01381265736448) q[0];
rz(pi/2) q[0];
rx(2.1952311566851233) q[1];
rz(pi/2) q[1];
rx(2.8062694001682282) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];