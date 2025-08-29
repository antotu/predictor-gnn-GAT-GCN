// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(0.8243990836422105) q[0];
ry(pi/2) q[0];
ry(-1.6409931545156566) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(2.1713845533148084) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(-0.07941351204252355) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(1.715336755465894) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
ry(-2.827833907641874) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(2.7497106937963713) q[0];
rx(-pi/2) q[1];
ry(1.2097157181556342) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];