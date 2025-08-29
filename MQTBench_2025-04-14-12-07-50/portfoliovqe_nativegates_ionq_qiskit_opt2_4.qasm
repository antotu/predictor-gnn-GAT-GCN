// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-2.3454241859719134) q[0];
ry(-0.5250720592131373) q[1];
rz(-pi) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi) q[0];
rz(-pi) q[2];
ry(-1.2320476748389984) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(-pi) q[3];
ry(-0.8024446265244146) q[3];
rxx(pi/2) q[0],q[3];
rz(0.9287698076841124) q[0];
rx(-3*pi/2) q[0];
rx(-pi) q[3];
rxx(pi/2) q[1],q[3];
rz(2.1379412855977344) q[1];
rx(pi/2) q[1];
rxx(pi/2) q[0],q[1];
rxx(pi/2) q[2],q[3];
rz(-2.824047068612348) q[2];
rx(pi/2) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(-1.358596006942502) q[3];
rx(-3*pi/2) q[3];
rxx(pi/2) q[0],q[3];
rz(3.10536017650192) q[0];
rx(-3*pi/2) q[0];
rxx(pi/2) q[1],q[3];
rz(2.5610370414259194) q[1];
rx(pi/2) q[1];
rxx(pi/2) q[0],q[1];
rxx(pi/2) q[2],q[3];
rz(-0.5487368064322684) q[2];
rx(pi/2) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(3.013754395014116) q[3];
rx(-3*pi/2) q[3];
rxx(pi/2) q[0],q[3];
rz(-2.1795518493608856) q[0];
rx(-pi/2) q[0];
rxx(pi/2) q[1],q[3];
rz(-2.8001209020118614) q[1];
rx(-pi/2) q[1];
rxx(pi/2) q[2],q[3];
rz(-1.1414347331902217) q[2];
rx(-pi/2) q[2];
rz(-0.7410892869000731) q[3];
rx(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];