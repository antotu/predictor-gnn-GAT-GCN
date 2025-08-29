// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(1.332425308420851) q[0];
ry(-3.0442908791473617) q[1];
ry(-0.20331866073571742) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(2.458705159117967) q[0];
rx(-pi/2) q[0];
rz(-0.9580413276286395) q[1];
rx(-pi/2) q[1];
rx(-pi/2) q[2];
ry(-0.9615519930460735) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.7120126114807057) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-1.5485401376633183) q[1];
rx(-pi/2) q[2];
ry(2.6067084318166844) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];