// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.1413837443461052) q[0];
ry(-1.165438776653204) q[1];
rz(-pi) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
ry(-2.6110643410254446) q[2];
rz(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(-1.0602682986674221) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(-1.263637382914525) q[1];
rx(pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
rz(1.9996979812167073) q[2];
rx(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rz(1.0619092579619878) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(1.8379585614254381) q[1];
rx(pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
rz(-0.1656075623013522) q[2];
rx(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rz(2.7538676275552145) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(-2.57246719437879) q[1];
rx(-pi/2) q[1];
rz(0.916982571358675) q[2];
rx(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];