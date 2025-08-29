// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
qreg psi[1];
creg c[1];
rx(-1.590091765970311) q[0];
rz(-pi) q[0];
rz(pi/4) psi[0];
ry(pi/2) psi[0];
rxx(pi/2) q[0],psi[0];
rx(-0.01929543917541324) q[0];
rz(-pi) q[0];
ry(pi/2) psi[0];
rz(3*pi/4) psi[0];
barrier q[0],psi[0];
measure q[0] -> c[0];