// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-3.0075605995620722) q[0];
rx(3*pi/4) q[0];
ry(-2.7764294147166644) q[1];
rx(-3*pi/4) q[1];
rxx(pi/2) q[0],q[1];
rz(2.1255178073795644) q[0];
ry(1.4090428978836957) q[0];
rz(-1.0160748462102287) q[0];
rz(0.6154797086703874) q[1];
ry(2*pi/3) q[1];
rz(-0.6154797086703878) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.003316503278063987) q[0];
ry(3.1349596835124296) q[0];
rz(-3.138276150311931) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rx(pi/4) q[0];
ry(2.9893205770696625) q[0];
rx(-pi/4) q[1];
ry(-1.4971141523026976) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];