// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[2];
creg meas[2];
rz(3.032940367520016) q[0];
sx q[0];
rz(-pi) q[0];
rz(-1.2472672789913855) q[1];
sx q[1];
rz(-1.467740083917052) q[1];
sx q[1];
rz(-3.1071116083884807) q[1];
ecr q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(3.1360733467985114) q[0];
sx q[0];
rz(2.9243119533901627) q[1];
sx q[1];
rz(-1.9934534134009283) q[1];
sx q[1];
rz(-0.21728070019963042) q[1];
ecr q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(-1.98318542095936) q[0];
rz(pi/2) q[1];
sx q[1];
rz(-1.8925468811915378) q[1];
sx q[1];
rz(-1.600140326446227) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];