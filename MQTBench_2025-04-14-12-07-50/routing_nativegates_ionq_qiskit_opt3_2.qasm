// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(2.1358464352512687) q[0];
rx(3*pi/4) q[0];
ry(2.8575852417224388) q[1];
rx(-3*pi/4) q[1];
rxx(pi/2) q[0],q[1];
rz(1.9224146542551601) q[0];
ry(1.5077030549375587) q[0];
rz(-1.2191779993346334) q[0];
rz(0.6154797086703874) q[1];
ry(2*pi/3) q[1];
rz(-0.6154797086703878) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.11417232163674473) q[0];
ry(2.914721905533279) q[0];
rz(-3.0274203319530555) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rx(-3*pi/4) q[0];
ry(1.1602472757835498) q[0];
rx(3*pi/4) q[1];
ry(-0.48600773309196593) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];