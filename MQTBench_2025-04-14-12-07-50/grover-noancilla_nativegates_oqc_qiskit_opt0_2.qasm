// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[1];
qreg flag[1];
creg meas[2];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
x flag[0];
barrier q[0],flag[0];
measure q[0] -> meas[0];
measure flag[0] -> meas[1];