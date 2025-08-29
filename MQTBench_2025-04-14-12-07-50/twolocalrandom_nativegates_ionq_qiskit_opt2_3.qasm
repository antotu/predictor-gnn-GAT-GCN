// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(0.13396155251323505) q[0];
ry(0.13038834331032634) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
ry(3.9813292796090525) q[2];
rxx(pi/2) q[0],q[2];
rz(-1.578311754453951) q[0];
rx(-pi) q[0];
rx(-pi) q[2];
rxx(pi/2) q[1],q[2];
rz(1.5614156084307327) q[1];
rx(-pi) q[1];
rxx(pi/2) q[0],q[1];
ry(pi/2) q[1];
ry(1.4124389803026796) q[2];
rxx(pi/2) q[0],q[2];
rz(1.2444656817555666) q[0];
rx(-pi) q[0];
rx(-pi) q[2];
rxx(pi/2) q[1],q[2];
rz(-3.075426237427159) q[1];
rx(-pi) q[1];
rxx(pi/2) q[0],q[1];
ry(pi/2) q[1];
ry(1.0625547235745711) q[2];
rxx(pi/2) q[0],q[2];
rz(-1.0157409043377807) q[0];
rx(-pi/2) q[0];
rx(-pi) q[2];
rxx(pi/2) q[1],q[2];
rz(2.735446414104917) q[1];
rx(-pi/2) q[1];
ry(5.990347064774806) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];