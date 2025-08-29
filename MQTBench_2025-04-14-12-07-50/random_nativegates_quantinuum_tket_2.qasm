// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(2.4654149031875217*pi) q[0];
rz(3.5*pi) q[1];
rz(3.5*pi) q[0];
rx(3.5*pi) q[1];
rx(0.5*pi) q[0];
rz(2.9654149031875203*pi) q[1];
rz(0.5*pi) q[0];
rz(3.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rzz(0.38799753736862*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.001756849916544678*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.1312675256269262*pi) q[0];
rz(1.5093404851891892*pi) q[1];
rx(1.0*pi) q[0];
rx(3.0*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
