// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[3];
creg c[2];
rz(-pi/2) q[0];
sx q[0];
rz(2.5187281855889854) q[0];
rz(-pi/2) q[1];
sx q[1];
rz(-1.892546881191539) q[2];
sx q[2];
rz(-pi/2) q[2];
ecr q[0],q[2];
rz(-2.193660794795705) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[2];
sx q[2];
rz(-2.819842099193151) q[2];
sx q[2];
rz(-pi/2) q[2];
ecr q[1],q[2];
rz(pi/2) q[1];
sx q[1];
rz(pi/2) q[1];
barrier q[0],q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];