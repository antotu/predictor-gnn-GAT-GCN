// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg eval[2];
qreg q[1];
creg meas[3];
ry(-pi/2) eval[0];
ry(-pi/2) eval[1];
ry(-0.6435011087932845) q[0];
rz(-3*pi/2) q[0];
rzz(pi/2) eval[0],q[0];
rz(-9*pi/4) eval[0];
ry(0.9272952180016127) q[0];
rzz(pi/2) eval[0],q[0];
rz(-pi/2) q[0];
ry(-0.9272952180016121) q[0];
rzz(pi/2) eval[1],q[0];
rz(-pi/2) q[0];
ry(1.8545904360032246) q[0];
rzz(pi/2) eval[1],q[0];
rzz(pi/2) eval[0],eval[1];
ry(pi/4) eval[1];
rz(-pi/2) eval[1];
rzz(pi/2) eval[0],eval[1];
ry(pi/2) eval[0];
rx(pi/2) eval[1];
rz(pi/4) eval[1];
rz(pi/2) q[0];
ry(-2.8577985443814655) q[0];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];