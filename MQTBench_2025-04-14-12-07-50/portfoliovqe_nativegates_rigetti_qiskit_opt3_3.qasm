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
rx(5.866070236794164) q[0];
rz(-pi/2) q[1];
rx(6.220619511341384) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(5.43214671731746) q[2];
cz q[0],q[2];
rx(1.1718853724574898) q[0];
cz q[1],q[2];
rx(3.3306486514952027) q[1];
cz q[0],q[1];
rx(-1.4080395793654847) q[2];
cz q[0],q[2];
rx(-5.749929009326844) q[0];
cz q[1],q[2];
rx(0.2082433327900156) q[1];
cz q[0],q[1];
rx(0.40853648635963496) q[2];
cz q[0],q[2];
rx(1.8520933333423526) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rx(2.643687554206626) q[1];
rz(pi/2) q[1];
rx(-3.704101259982664) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];