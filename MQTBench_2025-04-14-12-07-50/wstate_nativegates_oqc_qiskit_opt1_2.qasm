// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[2];
creg meas[2];
sx q[0];
rz(pi/4) q[0];
x q[1];
rz(-pi/2) q[1];
ecr q[1],q[0];
sx q[0];
rz(pi/4) q[0];
sx q[0];
rz(-pi/2) q[0];
sx q[1];
ecr q[0],q[1];
x q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];