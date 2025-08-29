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
ry(-3.1098533127755474) q[0];
ry(-1.379245016238416) q[1];
rz(-3*pi/2) q[1];
rz(-pi) q[2];
ry(-2.98358362612952) q[2];
rz(-pi) q[3];
ry(-1.746722257165261) q[3];
ry(-3.1202663753194257) q[4];
rz(-3*pi/2) q[4];
rzz(pi/2) q[3],q[4];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-1.8702991797474293) q[0];
rz(-pi/2) q[1];
ry(-0.7273568727645118) q[1];
rz(-pi/2) q[2];
ry(-2.404223321434458) q[2];
rz(-pi/2) q[3];
ry(-1.4089386776699835) q[3];
ry(pi) q[4];
rzz(pi/2) q[3],q[4];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(-1.891159514677921) q[0];
rz(pi/2) q[1];
ry(-0.026517398786793166) q[1];
rz(pi/2) q[2];
ry(3.139911438948896) q[2];
rz(pi/2) q[3];
ry(0.020850317833553143) q[3];
rz(pi/2) q[4];
ry(0.0193259585278271) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];