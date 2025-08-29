// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(4.129682578806423) q[0],q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(4.129682578806423) q[0],q[2];
rx(-7.344585607195112) q[0];
rzz(4.129682578806423) q[1],q[2];
rx(-7.344585607195112) q[1];
rzz(4.607094035641191) q[0],q[1];
rx(-7.344585607195112) q[2];
rzz(4.607094035641191) q[0],q[2];
rx(-0.7589310241304785) q[0];
rzz(4.607094035641191) q[1],q[2];
rx(-0.7589310241304785) q[1];
rx(-0.7589310241304785) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];