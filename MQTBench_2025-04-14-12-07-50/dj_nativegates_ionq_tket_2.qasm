// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[1];
rx(0.5*pi) q[0];
rx(1.5*pi) q[1];
rz(1.5*pi) q[0];
rz(1.5*pi) q[1];
rx(1.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(1.0*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
barrier q[0],q[1];
measure q[0] -> c[0];
