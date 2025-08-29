// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
rxx(-5.627266644399231) q[0],q[2];
rxx(-5.627266644399231) q[0],q[3];
rz(-1.2427087956836664) q[0];
rxx(-5.627266644399231) q[1],q[4];
rxx(-5.627266644399231) q[2],q[4];
rz(-1.2427087956836664) q[2];
rxx(-1.8985554323596934) q[0],q[2];
rz(-1.2427087956836664) q[4];
rxx(-5.627266644399231) q[1],q[5];
rz(-1.2427087956836664) q[1];
rxx(-1.8985554323596934) q[1],q[4];
rxx(-1.8985554323596934) q[2],q[4];
rz(2.4858506689016373) q[2];
ry(pi/2) q[2];
rxx(-5.627266644399231) q[3],q[5];
rz(-1.2427087956836664) q[3];
rxx(-1.8985554323596934) q[0],q[3];
rz(2.4858506689016373) q[0];
ry(pi/2) q[0];
rz(2.4858506689016373) q[4];
ry(pi/2) q[4];
rz(-1.2427087956836664) q[5];
rxx(-1.8985554323596934) q[1],q[5];
rz(2.4858506689016373) q[1];
ry(pi/2) q[1];
rxx(-1.8985554323596934) q[3],q[5];
rz(2.4858506689016373) q[3];
ry(pi/2) q[3];
rz(2.4858506689016373) q[5];
ry(pi/2) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];