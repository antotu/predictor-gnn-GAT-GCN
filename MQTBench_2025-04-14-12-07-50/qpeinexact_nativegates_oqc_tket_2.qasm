// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;

qreg psi[1];
qreg q[1];
creg c[1];
rz(1.25*pi) psi[0];
rz(0.5*pi) q[0];
sx psi[0];
sx q[0];
rz(0.5*pi) psi[0];
rz(1.25*pi) q[0];
sx psi[0];
sx q[0];
rz(0.5*pi) psi[0];
rz(0.5*pi) q[0];
x psi[0];
x q[0];
rz(3.5*pi) psi[0];
sx q[0];
sx q[0];
ecr psi[0],q[0];
sx psi[0];
x q[0];
rz(0.25*pi) psi[0];
sx q[0];
sx psi[0];
sx q[0];
rz(0.5*pi) psi[0];
x psi[0];
rz(3.5*pi) psi[0];
ecr psi[0],q[0];
sx psi[0];
rz(1.5*pi) psi[0];
sx psi[0];
rz(1.5*pi) psi[0];
barrier q[0],psi[0];
measure q[0] -> c[0];
