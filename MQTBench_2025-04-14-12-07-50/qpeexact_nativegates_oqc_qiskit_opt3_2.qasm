// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[1];
qreg psi[1];
creg c[1];
rz(-pi/2) q[0];
sx q[0];
rz(2.931592954804673) q[0];
rz(-1.2490457723982544) psi[0];
sx psi[0];
rz(pi/2) psi[0];
ecr q[0],psi[0];
rz(1.3607966280097754) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) psi[0];
sx psi[0];
rz(-2.819842099193151) psi[0];
barrier q[0],psi[0];
measure q[0] -> c[0];