// Benchmark was created by MQT Bench on 2024-03-20
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-1.4368347742816618) q[0];
rz(-3*pi/2) q[0];
ry(-1.4404079834845707) q[1];
rz(-3*pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(2.301856027570534) q[0];
ry(1.5783117544539516) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-3.1322119352256292) q[0];
rz(-pi/2) q[1];
ry(-1.4124389803026796) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(1.2444656817555668) q[0];
rz(pi/2) q[1];
ry(0.06616641616263393) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];