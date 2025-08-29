// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[7];
ry(pi) q[0];
ry(pi) q[1];
rx(3*pi/2) q[2];
ry(pi) q[3];
rx(3*pi/2) q[4];
ry(pi) q[5];
ry(pi) q[6];
ry(-pi/2) q[7];
rxx(pi/2) q[0],q[7];
rz(-pi) q[0];
rx(-pi/2) q[0];
rx(-7*pi/2) q[7];
rxx(pi/2) q[1],q[7];
rz(-pi) q[1];
rx(-pi/2) q[1];
rxx(pi/2) q[2],q[7];
rxx(pi/2) q[3],q[7];
rz(-pi) q[3];
rx(-pi/2) q[3];
rxx(pi/2) q[4],q[7];
rxx(pi/2) q[5],q[7];
rz(-pi) q[5];
rx(-pi/2) q[5];
rxx(pi/2) q[6],q[7];
rz(-pi) q[6];
rx(-pi/2) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];