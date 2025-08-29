// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
qreg psi[1];
creg c[2];
rz(pi/2) q[0];
sx q[0];
rz(-3.6750206728077726) q[0];
rz(-1.1793165615875614) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-0.7380802994812505) psi[0];
sx psi[0];
rz(pi/2) psi[0];
cx q[0],psi[0];
sx q[0];
cx q[1],q[0];
rz(pi/2) q[0];
sx q[1];
rz(-pi) q[1];
cx q[1],q[0];
rz(pi/4) q[0];
sx q[1];
cx q[1],q[0];
x q[0];
rz(-2.747674255399681) q[0];
rz(1.3188261826154282) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi/2) psi[0];
sx psi[0];
rz(-0.7380802994812505) psi[0];
barrier q[0],q[1],psi[0];
measure q[0] -> c[0];
measure q[1] -> c[1];