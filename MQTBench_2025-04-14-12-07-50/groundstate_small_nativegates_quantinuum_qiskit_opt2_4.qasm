// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(2.9027473172762823) q[0];
ry(-pi/2) q[0];
rz(2.298063608792898) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-4.846907406331585) q[0];
rz(1.8271951524956815) q[1];
rz(1.728927262621128) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(-1.2025045078188121) q[2];
rzz(pi/2) q[1],q[2];
rz(0.7444141885294977) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
ry(-pi/2) q[0];
rz(-3.542964099006628) q[3];
rzz(pi/2) q[1],q[3];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-5.344100290253127) q[0];
rz(2.3009070938546525) q[1];
rzz(pi/2) q[2],q[3];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(0.11070123464253978) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
ry(pi/2) q[0];
rz(-4.335885030563583) q[3];
rzz(pi/2) q[1],q[3];
ry(pi/2) q[1];
rzz(pi/2) q[2],q[3];
ry(pi/2) q[2];
ry(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];