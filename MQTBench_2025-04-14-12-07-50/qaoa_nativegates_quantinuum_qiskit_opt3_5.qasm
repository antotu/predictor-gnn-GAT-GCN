// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(-3.6664069009277225) q[0],q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(-3.6664069009277225) q[0],q[2];
rx(10.527725181373595) q[0];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(-3.6664069009277225) q[1],q[3];
rx(10.527725181373595) q[1];
rzz(5.180156213955458) q[0],q[1];
ry(pi/2) q[4];
rx(pi) q[4];
rzz(-3.6664069009277225) q[2],q[4];
rx(10.527725181373595) q[2];
rzz(5.180156213955458) q[0],q[2];
rx(3.666323705612242) q[0];
rzz(-3.6664069009277225) q[3],q[4];
rx(10.527725181373595) q[3];
rzz(5.180156213955458) q[1],q[3];
rx(3.666323705612242) q[1];
rx(10.527725181373595) q[4];
rzz(5.180156213955458) q[2],q[4];
rx(3.666323705612242) q[2];
rzz(5.180156213955458) q[3],q[4];
rx(3.666323705612242) q[3];
rx(3.666323705612242) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];