// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg psi[1];
qreg q[1];
creg c[1];
rx(0.5*pi) psi[0];
rz(1.0*pi) q[0];
rz(1.5*pi) psi[0];
rx(3.5*pi) q[0];
rz(1.5*pi) psi[0];
rx(0.5*pi) q[0];
rx(1.5*pi) psi[0];
rz(0.5*pi) q[0];
rz(0.5*pi) psi[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz psi[0],q[0];
rx(0.5*pi) psi[0];
rz(0.5*pi) q[0];
rz(0.5*pi) psi[0];
rx(0.5*pi) q[0];
rz(0.5*pi) psi[0];
rz(0.5*pi) q[0];
rx(0.5*pi) psi[0];
rz(1.0*pi) q[0];
rz(0.5*pi) psi[0];
barrier q[0],psi[0];
measure q[0] -> c[0];
