// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-1.1172763665922323) q[0];
rz(-5*pi/2) q[0];
ry(2.767138701489198) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[1];
ry(2.6565896081144165) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(-0.1809940160160229) q[3];
rzz(pi/2) q[0],q[3];
ry(1.3443910535931651) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(0.3928892879387829) q[1];
rzz(pi/2) q[0],q[1];
rz(-3*pi/2) q[0];
rz(pi/2) q[1];
rzz(pi/2) q[2],q[3];
ry(0.9036020771530913) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(-1.958384117687436) q[3];
rzz(pi/2) q[0],q[3];
ry(-0.624720941844399) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(-2.4639938656268527) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rzz(pi/2) q[2],q[3];
ry(0.22084087583574807) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(1.9174306982392204) q[3];
rzz(pi/2) q[0],q[3];
ry(-0.9589800809563221) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(0.6642769147572116) q[1];
rzz(pi/2) q[2],q[3];
ry(1.6128993452530802) q[2];
ry(-2.277821885168312) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];