// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
rz(-pi) q[0];
ry(-1.0896907878511013) q[0];
ry(0.9449846422128414) q[1];
rzz(pi/2) q[0],q[1];
ry(1.0290910017258306) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
ry(2.872517407445525) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(2.9828143327022696) q[4];
rzz(pi/2) q[0],q[4];
ry(-1.6315645181587153) q[0];
rzz(pi/2) q[1],q[4];
ry(1.937349378897924) q[1];
rzz(pi/2) q[0],q[1];
rzz(pi/2) q[2],q[4];
ry(0.219693176374658) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
rzz(pi/2) q[3],q[4];
ry(-0.984916507305206) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(-0.017110066521987318) q[4];
rzz(pi/2) q[0],q[4];
ry(0.8738357965732352) q[0];
rzz(pi/2) q[1],q[4];
ry(-1.1827849994111268) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi) q[0];
rzz(pi/2) q[2],q[4];
ry(-2.3476741431488986) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
rzz(pi/2) q[3],q[4];
ry(1.9764404948762453) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(2.7602382846577256) q[4];
rzz(pi/2) q[0],q[4];
ry(-0.6625276283491242) q[0];
rzz(pi/2) q[1],q[4];
ry(0.8879799675671554) q[1];
rzz(pi/2) q[2],q[4];
ry(-3.1344332201975287) q[2];
rzz(pi/2) q[3],q[4];
ry(0.3394891877307149) q[3];
ry(-0.8114010176045474) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];