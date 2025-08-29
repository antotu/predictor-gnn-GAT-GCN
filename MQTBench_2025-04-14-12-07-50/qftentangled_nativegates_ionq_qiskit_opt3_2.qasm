// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(pi/4) q[0];
ry(-pi/2) q[0];
ry(-3*pi/4) q[1];
rz(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(2.1006991165438222) q[0];
ry(1.4238211361313906) q[0];
rz(2.100699116543823) q[0];
rz(-2.5261129449194053) q[1];
ry(2*pi/3) q[1];
rz(-0.6154797086703869) q[1];
rxx(pi/2) q[0],q[1];
rx(3*pi/4) q[0];
rz(-pi/4) q[0];
rz(-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];