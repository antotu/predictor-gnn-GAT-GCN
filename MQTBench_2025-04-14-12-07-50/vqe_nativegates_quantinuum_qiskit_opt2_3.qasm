// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-0.7562977775647848) q[0];
rz(-3*pi/2) q[0];
ry(-0.34991867245671915) q[1];
rz(-3*pi/2) q[1];
rz(-pi) q[2];
ry(-1.1082467797232236) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(-2.36225848356007) q[0];
rz(-pi/2) q[1];
ry(1.9261089710522334) q[1];
rz(-pi/2) q[2];
ry(0.6892185887233067) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(0.22214612058667377) q[0];
rz(pi/2) q[1];
ry(0.17560201470069314) q[1];
rz(pi/2) q[2];
ry(0.6470610155188112) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];