// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg eval[1];
qreg q[1];
creg meas[2];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(0) eval[0];
rz(-pi/2) eval[0];
rz(0) q[0];
sx q[0];
rz(4.068887871591405) q[0];
sx q[0];
rz(3*pi) q[0];
rz(0) q[0];
rz(pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(pi/2) q[0];
ecr eval[0],q[0];
x eval[0];
rz(-pi/2) eval[0];
rz(0) q[0];
sx q[0];
rz(2.214297435588181) q[0];
sx q[0];
rz(3*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(pi/2) q[0];
ecr eval[0],q[0];
x eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(0) q[0];
sx q[0];
rz(4.068887871591405) q[0];
sx q[0];
rz(3*pi) q[0];
barrier eval[0],q[0];
measure eval[0] -> meas[0];
measure q[0] -> meas[1];