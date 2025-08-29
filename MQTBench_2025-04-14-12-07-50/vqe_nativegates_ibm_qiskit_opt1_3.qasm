// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
sx q[0];
rz(2.285607649549524) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(2.128217868111303) q[1];
sx q[1];
sx q[2];
rz(1.9794699356902479) q[2];
sx q[2];
rz(-pi) q[2];
cx q[1],q[2];
cx q[0],q[1];
sx q[0];
rz(1.2542807234676108) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(1.956611359735156) q[1];
sx q[1];
sx q[2];
rz(0.08321654092351594) q[2];
sx q[2];
rz(-pi) q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(2.967831166949745) q[0];
sx q[0];
sx q[1];
rz(0.3793742426159339) q[1];
sx q[1];
rz(-pi) q[1];
rz(-pi) q[2];
sx q[2];
rz(1.510078209162657) q[2];
sx q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];