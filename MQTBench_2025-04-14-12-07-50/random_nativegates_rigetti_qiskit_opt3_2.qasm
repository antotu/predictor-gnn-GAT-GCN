// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-0.10865228606977784) q[0];
rx(pi/2) q[0];
rx(3.032940367520016) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rx(-3.1360733467985127) q[0];
rz(-pi) q[0];
rx(1.2189302130081823) q[1];
cz q[0],q[1];
rx(pi/2) q[0];
rz(-1.98318542095936) q[0];
rx(pi/2) q[1];
rz(1.5414523271435758) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];