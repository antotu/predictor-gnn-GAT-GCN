// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
qreg psi[1];
creg c[2];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(1.0108811657215422) q[0];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi) psi[0];
cp(3*pi/4) psi[0],q[0];
rx(-pi/2) q[0];
cp(-pi/2) psi[0],q[1];
rx(0.7575448577518722) q[1];
rz(-pi) q[1];
cz q[0],q[1];
rx(pi/2) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-pi/4) q[0];
rz(pi/2) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-pi/2) q[0];
rz(-1.5429430211493207) q[0];
rz(-1.3453133244708018) q[1];
rx(pi/2) q[1];
rz(-pi/2) q[1];
barrier q[0],q[1],psi[0];
measure q[0] -> c[0];
measure q[1] -> c[1];