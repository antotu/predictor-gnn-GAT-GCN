// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(0.4654149031875199*pi) q[0];
rz(0.5*pi) q[1];
sx q[0];
sx q[1];
rz(0.5*pi) q[0];
rz(3.96541490318752*pi) q[1];
x q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
rz(2.998243150083456*pi) q[1];
rz(0.38799753736861997*pi) q[0];
sx q[1];
sx q[0];
rz(1.0*pi) q[1];
rz(0.5*pi) q[0];
cx q[0],q[1];
sx q[0];
rz(1.5093404851891892*pi) q[1];
rz(1.1312675256269253*pi) q[0];
x q[1];
x q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
