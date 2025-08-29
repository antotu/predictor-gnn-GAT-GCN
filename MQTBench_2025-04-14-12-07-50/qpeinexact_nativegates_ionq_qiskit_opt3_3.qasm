// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
qreg psi[1];
creg c[2];
ry(pi/2) q[0];
rx(pi/2) q[0];
ry(pi/2) q[1];
rx(pi/2) q[1];
rz(5*pi/8) psi[0];
ry(-pi/2) psi[0];
rxx(pi/2) psi[0],q[0];
rz(-3*pi/8) q[0];
rx(-9*pi/4) psi[0];
rxx(pi/2) psi[0],q[0];
ry(5*pi/8) q[0];
rx(pi/4) q[0];
rxx(pi/2) psi[0],q[1];
rz(pi/4) q[1];
rxx(pi/2) psi[0],q[1];
ry(3*pi/4) q[1];
rx(-pi/4) q[1];
rxx(pi/2) q[0],q[1];
rz(2.526112944919406) q[0];
ry(pi/3) q[0];
rz(-0.6154797086703874) q[0];
rz(0.6154797086703874) q[1];
ry(2*pi/3) q[1];
rz(-0.6154797086703878) q[1];
rxx(pi/2) q[0],q[1];
rz(-2.856668526967729) q[0];
ry(2.5935642459694805) q[0];
rz(-0.284924126622061) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/4) q[0];
rz(3*pi/4) q[0];
rx(-pi/2) q[1];
ry(-pi/2) psi[0];
barrier q[0],q[1],psi[0];
measure q[0] -> c[0];
measure q[1] -> c[1];