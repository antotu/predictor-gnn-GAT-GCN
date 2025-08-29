// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(0.2379808555621427) q[0];
ry(pi/2) q[0];
ry(-1.6387499136004353) q[1];
ry(pi/2) q[1];
ry(1.1416622551932372) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(0.19285013009460494) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(2.0216626102989435) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(-2.6622799636499948) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(3.1194672788348172) q[0];
rx(-pi/2) q[1];
ry(1.6019609402386041) q[1];
rx(-pi/2) q[2];
ry(1.1956825939745406) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];