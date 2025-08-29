// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
sx q[0];
rz(2.499797089548605) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(0.8292238190872103) q[1];
cx q[1],q[0];
rz(-0.794600594139578) q[0];
sx q[1];
rz(-pi) q[1];
cx q[1],q[0];
rz(0.16114665229900177) q[0];
sx q[1];
cx q[1],q[0];
sx q[0];
rz(0.4388470475419304) q[0];
sx q[0];
rz(-2.829347176643685) q[1];
sx q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];