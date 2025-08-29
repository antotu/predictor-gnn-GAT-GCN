// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[1];
qreg psi[1];
creg c[1];
rz(-pi/2) q[0];
sx q[0];
rz(-1.3223700419985347) q[0];
sx psi[0];
rz(0.32175055439664124) psi[0];
sx psi[0];
rz(pi/2) psi[0];
ecr q[0],psi[0];
rz(3.0113483261588403) psi[0];
sx psi[0];
rz(-2.398524257265432) psi[0];
sx psi[0];
rz(-0.13024432743095105) psi[0];
ecr q[0],psi[0];
rz(-2.6046207749887063) q[0];
sx q[0];
rz(-pi/2) q[0];
rz(-pi/2) psi[0];
sx psi[0];
rz(-2.819842099193149) psi[0];
sx psi[0];
rz(-3*pi/4) psi[0];
barrier q[0],psi[0];
measure q[0] -> c[0];