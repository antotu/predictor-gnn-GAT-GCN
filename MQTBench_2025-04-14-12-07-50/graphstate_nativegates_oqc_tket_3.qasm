// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;

qreg q[3];
creg meas[3];
x q[0];
sx q[1];
rz(3.0*pi) q[2];
rz(2.5*pi) q[0];
rz(1.0*pi) q[1];
sx q[2];
sx q[0];
sx q[1];
sx q[2];
rz(1.5*pi) q[0];
sx q[1];
sx q[2];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
sx q[0];
rz(1.0*pi) q[1];
rz(0.5*pi) q[0];
sx q[1];
rz(2.5*pi) q[0];
rz(2.5*pi) q[1];
sx q[0];
sx q[1];
rz(1.5*pi) q[0];
rz(1.5*pi) q[1];
x q[0];
x q[1];
rz(3.5*pi) q[0];
rz(3.5*pi) q[1];
ecr q[0],q[2];
sx q[0];
sx q[2];
rz(0.5*pi) q[0];
sx q[2];
rz(0.5*pi) q[0];
ecr q[1],q[2];
sx q[0];
sx q[1];
rz(3.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
sx q[2];
rz(0.5*pi) q[1];
sx q[1];
rz(0.5*pi) q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
