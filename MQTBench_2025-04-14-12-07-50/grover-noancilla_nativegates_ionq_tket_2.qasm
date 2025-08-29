// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg flag[1];
qreg q[1];
creg meas[2];
rx(1.0*pi) flag[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
barrier q[0],flag[0];
measure flag[0] -> meas[1];
measure q[0] -> meas[0];
