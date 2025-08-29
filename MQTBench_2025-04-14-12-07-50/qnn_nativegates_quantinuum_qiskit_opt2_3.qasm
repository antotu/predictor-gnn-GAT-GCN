// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-pi/2) q[0];
rz(-2.7123889803846897) q[0];
rx(2.0) q[1];
rzz(pi/2) q[0],q[1];
ry(2.889652880639957) q[1];
rz(-pi) q[1];
rzz(pi/2) q[0],q[1];
ry(-pi/2) q[1];
rx(2.0) q[2];
rzz(pi/2) q[0],q[2];
ry(2.889652880639957) q[2];
rz(-pi) q[2];
rzz(pi/2) q[0],q[2];
rx(-pi/2) q[0];
rz(-8.995574287564276) q[0];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(2.889652880639957) q[2];
rz(-4.283185307179587) q[2];
rzz(pi/2) q[1],q[2];
ry(-1.9999999999999998) q[1];
rz(pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(2.889652880639957) q[1];
rz(-pi) q[1];
rzz(pi/2) q[0],q[1];
ry(-pi/2) q[1];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
ry(2.889652880639957) q[2];
rz(-pi) q[2];
rzz(pi/2) q[0],q[2];
ry(-0.7597316923211357) q[0];
rzz(pi/2) q[1],q[2];
rz(-pi) q[1];
ry(2.889652880639957) q[2];
rz(-pi) q[2];
rzz(pi/2) q[1],q[2];
ry(-0.3414801562367352) q[1];
ry(-0.7033183080126101) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(0.32359934493050935) q[0];
rz(pi/2) q[1];
ry(1.900595744362625) q[1];
rz(pi/2) q[2];
ry(1.867451441025235) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];