// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg meas[8];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(-4.993768259594308) q[0],q[2];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(-4.993768259594308) q[2],q[3];
rx(-8.780062372238921) q[2];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[5];
rx(pi) q[5];
rzz(-4.993768259594308) q[1],q[5];
rzz(-4.993768259594308) q[4],q[5];
rx(-8.780062372238921) q[5];
ry(pi/2) q[6];
rx(pi) q[6];
rzz(-4.993768259594308) q[0],q[6];
rx(-8.780062372238921) q[0];
rzz(2.496886052335393) q[0],q[2];
rzz(-4.993768259594308) q[4],q[6];
rx(-8.780062372238921) q[4];
rx(-8.780062372238921) q[6];
rzz(2.496886052335393) q[0],q[6];
rx(-1.2894804732469438) q[0];
ry(pi/2) q[7];
rx(pi) q[7];
rzz(-4.993768259594308) q[1],q[7];
rx(-8.780062372238921) q[1];
rzz(2.496886052335393) q[1],q[5];
rzz(-4.993768259594308) q[3],q[7];
rx(-8.780062372238921) q[3];
rzz(2.496886052335393) q[2],q[3];
rx(-1.2894804732469438) q[2];
rzz(2.496886052335393) q[4],q[5];
rzz(2.496886052335393) q[4],q[6];
rx(-1.2894804732469438) q[4];
rx(-1.2894804732469438) q[5];
rx(-1.2894804732469438) q[6];
rx(-8.780062372238921) q[7];
rzz(2.496886052335393) q[1],q[7];
rx(-1.2894804732469438) q[1];
rzz(2.496886052335393) q[3],q[7];
rx(-1.2894804732469438) q[3];
rx(-1.2894804732469438) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];