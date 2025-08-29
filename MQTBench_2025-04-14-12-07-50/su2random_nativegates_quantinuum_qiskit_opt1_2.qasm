// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-1.4368347742816614) q[0];
rz(0.8397366260192589) q[0];
ry(1.7011846701052231) q[1];
rx(1.563280899135842) q[1];
rzz(pi/2) q[0],q[1];
rx(3.1322119352256292) q[0];
rz(-0.3263306450393717) q[0];
rz(3.07625176512164) q[1];
ry(1.560369549340169) q[1];
rz(2.98357607888234) q[1];
rzz(pi/2) q[0],q[1];
rx(1.0625547235745716) q[0];
rz(2.735446414104916) q[0];
rz(2.090470170227258) q[1];
ry(0.6203227775090692) q[1];
rz(2.70589435798386) q[1];
rzz(pi/2) q[0],q[1];
rx(0.02480768898038416) q[0];
rz(0.3934591061740109) q[0];
rx(-1.4941900766281213) q[1];
rz(-0.8637741970177757) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];