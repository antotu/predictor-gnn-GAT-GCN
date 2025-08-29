// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.886152170446779) q[0];
rz(-3*pi/2) q[0];
ry(-2.125777333814004) q[1];
rz(-3*pi/2) q[1];
rz(-pi) q[2];
ry(-1.8238590108422905) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(-0.5639230843099249) q[0];
rz(-pi/2) q[1];
ry(2.0256357787835566) q[1];
rz(-pi/2) q[2];
ry(-1.0993406949477482) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(2.779521253579362) q[0];
rz(pi/2) q[1];
ry(2.5998488306502177) q[1];
rz(pi/2) q[2];
ry(2.7111881090894863) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];