// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(-3.0714554174341533) q[0];
rz(-pi) q[0];
ry(-2.7208568363680796) q[1];
rz(-pi) q[1];
ry(-0.9240300813315057) q[2];
rz(-pi) q[2];
ry(-0.1773344166768625) q[3];
rz(-pi) q[3];
rz(-pi) q[4];
ry(-1.4471878055314245) q[4];
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
rz(-pi/2) q[0];
ry(1.53393629164021) q[0];
rz(-pi/2) q[1];
ry(0.02423603539724679) q[1];
rz(-pi/2) q[2];
ry(-3.112370305371041) q[2];
rz(-pi/2) q[3];
ry(0.024371116025025306) q[3];
rz(-pi/2) q[4];
ry(-1.6923796013028338) q[4];
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
ry(-1.6103283409799296) q[0];
rz(pi/2) q[1];
ry(3.0727722572245177) q[1];
rz(pi/2) q[2];
ry(1.4347652938573126) q[2];
rz(pi/2) q[3];
ry(0.9244648624954411) q[3];
rz(pi/2) q[4];
ry(-0.1759930614004838) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];