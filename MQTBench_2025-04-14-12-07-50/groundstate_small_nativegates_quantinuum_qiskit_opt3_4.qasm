// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(2.881024219094435) q[0];
ry(-pi/2) q[0];
rz(0.5466289114182938) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-3.72101011412553) q[0];
rz(-2.92373952536063) q[1];
rz(-0.5723713639075116) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(0.6795247864157297) q[2];
rzz(pi/2) q[1],q[2];
rz(2.2905111153565016) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
ry(-pi/2) q[0];
rz(-1.9827274613586772) q[3];
rzz(pi/2) q[1],q[3];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-0.47863106478489126) q[0];
rz(1.4963005914815977) q[1];
rzz(pi/2) q[2],q[3];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(1.668054801869788) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
ry(pi/2) q[0];
rz(-3.4908464245794963) q[3];
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