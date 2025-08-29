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
rz(pi/2) q[0];
sx q[0];
rz(2.0) q[0];
rz(-pi/2) q[1];
sx q[1];
rz(-0.42920367320510167) q[1];
sx q[1];
ecr q[0],q[1];
x q[0];
rz(-pi/2) q[0];
rz(-0.2519397729498367) q[1];
sx q[1];
rz(-pi) q[1];
ecr q[0],q[1];
rz(pi/2) q[0];
sx q[0];
rz(-1.1415926535897931) q[0];
rz(-pi/2) q[1];
sx q[1];
rz(-0.42920367320510167) q[1];
sx q[1];
ecr q[0],q[1];
x q[0];
rz(-pi/2) q[0];
rz(-0.2519397729498367) q[1];
sx q[1];
rz(-pi) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.526268929929735) q[0];
sx q[0];
rz(-pi/2) q[0];
rz(-pi) q[1];
sx q[1];
rz(2.5484594301167016) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.00952174105177761) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(2.2058162036220788) q[1];
sx q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];