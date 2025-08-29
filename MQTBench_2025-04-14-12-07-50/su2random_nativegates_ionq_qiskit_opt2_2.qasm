// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(0.13396155251323538) q[0];
rx(-2.301856027570535) q[0];
ry(0.13038834331032634) q[1];
rz(4.704873552725635) q[1];
rxx(pi/2) q[0],q[1];
rz(3.1322119352256284) q[0];
rx(-0.32633064503933007) q[0];
rx(-pi/2) q[1];
ry(1.4124389803026796) q[1];
rz(4.778555396547324) q[1];
rxx(pi/2) q[0],q[1];
rz(1.0625547235745714) q[0];
rx(2.735446414104917) q[0];
rx(-pi/2) q[1];
ry(0.5550554224571163) q[1];
rz(5.990347064774806) q[1];
rxx(pi/2) q[0],q[1];
rz(-3.1167849646094083) q[0];
ry(pi/2) q[0];
rz(0.39345910617401625) q[0];
rx(-pi/2) q[1];
ry(3.2181989037565684) q[1];
rz(3.848614783366913) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];