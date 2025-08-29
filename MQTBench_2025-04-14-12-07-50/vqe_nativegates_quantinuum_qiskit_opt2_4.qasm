// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rx(pi) q[0];
ry(-0.4308145107475777) q[1];
rz(-3*pi/2) q[1];
ry(-1.1983489920385757) q[2];
rz(-3*pi/2) q[2];
ry(-1.328241267579365) q[3];
rz(-3*pi/2) q[3];
rzz(pi/2) q[2],q[3];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-1.5710005604053083) q[0];
rz(-pi/2) q[1];
ry(-0.10256908173679066) q[1];
rz(-pi/2) q[2];
ry(-0.5949335646972949) q[2];
ry(-1.4809155150785278) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(1.571011613855614) q[0];
rx(3.141561151924442) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
ry(-2.7225200405238343) q[2];
rz(pi/2) q[3];
ry(-2.022986384362587) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];