// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-2.926043594146467) q[0];
ry(1.2539871819151562) q[1];
rzz(pi/2) q[0],q[1];
rz(pi) q[1];
ry(1.5313587781275155) q[2];
rzz(pi/2) q[0],q[2];
ry(-0.6784985731678399) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(-2.667801046394739) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi) q[0];
rz(pi) q[1];
ry(1.163286103417256) q[2];
rzz(pi/2) q[0],q[2];
ry(2.111454199230898) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(-2.6919517577023435) q[1];
rzz(pi/2) q[0],q[1];
rz(pi) q[1];
ry(-0.719320760611292) q[2];
rzz(pi/2) q[0],q[2];
ry(-0.38669155585958315) q[0];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(-2.1877501916421562) q[1];
ry(1.298172812795458) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];