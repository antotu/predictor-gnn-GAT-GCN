// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.0299056361312595) q[0];
rz(-pi) q[1];
ry(-0.4856777631878124) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
ry(-1.1763847558559477) q[2];
rz(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(-1.5850306282376394) q[0];
rx(-pi) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(0.8060323603243624) q[1];
rx(pi) q[1];
rxx(pi/2) q[0],q[1];
rz(-2.5052830297664723) q[2];
rx(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(1.7230090361586505) q[0];
rx(-pi) q[0];
rxx(pi/2) q[1],q[2];
rz(1.2135954280481966) q[1];
rx(pi) q[1];
rxx(pi/2) q[0],q[1];
rz(-2.5824574044134954) q[2];
rx(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(0.9239156217517852) q[0];
rx(-pi/2) q[0];
rxx(pi/2) q[1],q[2];
rz(3.001574039526364) q[1];
rx(-pi/2) q[1];
rz(-2.5539054235267553) q[2];
rx(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];