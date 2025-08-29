// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;

qreg eval[1];
qreg q[1];
creg meas[2];
rz(3.0*pi) eval[0];
sx q[0];
x eval[0];
rz(3.795167235300867*pi) q[0];
sx eval[0];
sx q[0];
rz(0.5*pi) eval[0];
rz(0.5*pi) q[0];
x eval[0];
x q[0];
rz(3.5*pi) eval[0];
sx q[0];
sx q[0];
ecr eval[0],q[0];
sx eval[0];
x q[0];
rz(0.2951672353008674*pi) eval[0];
sx q[0];
sx eval[0];
sx q[0];
rz(0.5*pi) eval[0];
x eval[0];
rz(3.5*pi) eval[0];
ecr eval[0],q[0];
sx eval[0];
rz(0.5*pi) q[0];
rz(3.0*pi) eval[0];
sx q[0];
x eval[0];
rz(2.795167235300868*pi) q[0];
sx q[0];
rz(1.0*pi) q[0];
barrier eval[0],q[0];
measure eval[0] -> meas[0];
measure q[0] -> meas[1];
