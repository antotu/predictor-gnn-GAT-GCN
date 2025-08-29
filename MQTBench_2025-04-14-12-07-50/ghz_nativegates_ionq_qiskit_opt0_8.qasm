// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg meas[8];
ry(pi/2) q[7];
rx(pi) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[6];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[5];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[4];
rx(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[3];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[1];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];