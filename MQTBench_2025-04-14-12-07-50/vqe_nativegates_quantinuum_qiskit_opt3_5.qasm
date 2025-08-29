// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(-0.26216210221563796) q[0];
rz(-3*pi/2) q[0];
rz(-pi) q[1];
ry(-0.005984916455187052) q[1];
rz(-pi) q[2];
ry(-3.073386728384536) q[2];
rz(-pi) q[3];
ry(-1.2000950417990937) q[3];
rz(-pi) q[4];
ry(-2.0325089335054347) q[4];
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
ry(1.4464458374415867) q[0];
rz(-pi/2) q[1];
ry(-2.6931471104272298) q[1];
rz(-pi/2) q[2];
ry(-1.4324399443833922) q[2];
rz(-pi/2) q[3];
ry(-0.32357949171006634) q[3];
rz(-pi/2) q[4];
ry(1.4027601496984567) q[4];
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
ry(1.570830892276481) q[0];
rz(pi/2) q[1];
ry(2.851312926748646) q[1];
rz(pi/2) q[2];
ry(2.7539717467100604) q[2];
rz(pi/2) q[3];
ry(-2.5974730443197522) q[3];
rz(pi/2) q[4];
ry(1.3081322294992843) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];