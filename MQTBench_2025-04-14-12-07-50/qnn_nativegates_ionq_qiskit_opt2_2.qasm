// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rx(-2.7123889803846897) q[0];
ry(-pi/2) q[1];
rz(-1.1415926535897931) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[1];
rz(9.172838187819544) q[1];
rxx(pi/2) q[0],q[1];
ry(-2.71238898038469) q[0];
rz(-pi/2) q[0];
ry(-pi/2) q[1];
rz(-2.7123889803846897) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
rz(9.172838187819544) q[1];
rxx(pi/2) q[0],q[1];
rz(0.7524571244454386) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(0.3124882712394845) q[1];
rxx(pi/2) q[0],q[1];
rz(-1.3213067266690857) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(0.3497163977747707) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];