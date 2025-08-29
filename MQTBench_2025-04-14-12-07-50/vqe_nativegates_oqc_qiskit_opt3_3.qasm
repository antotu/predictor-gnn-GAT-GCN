// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[3];
creg meas[3];
sx q[0];
rz(0.12990730530466665) q[0];
sx q[0];
rz(pi/2) q[0];
sx q[1];
rz(1.3954075872528513) q[1];
sx q[1];
rz(0.35431001719615285) q[2];
sx q[2];
rz(-1.1468388347097864) q[2];
sx q[2];
rz(-2.9905767351253623) q[2];
ecr q[1],q[2];
rz(pi/2) q[1];
sx q[1];
rz(-pi) q[1];
ecr q[0],q[1];
sx q[0];
rz(1.2412882569502388) q[0];
sx q[0];
rz(-pi/2) q[0];
sx q[1];
rz(-0.33601745293416485) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi/2) q[2];
sx q[2];
rz(-2.81984209919315) q[2];
sx q[2];
rz(-0.9220782394188269) q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(0.8496975881259319) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.4734668703072096) q[1];
sx q[1];
sx q[2];
rz(1.0829082228434466) q[2];
sx q[2];
rz(-pi) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];