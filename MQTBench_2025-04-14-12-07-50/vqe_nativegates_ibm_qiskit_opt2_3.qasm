// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi) q[0];
sx q[0];
rz(2.1550173215979616) q[0];
sx q[0];
sx q[1];
rz(1.9959363022552399) q[1];
sx q[1];
rz(-pi) q[1];
rz(-pi) q[2];
sx q[2];
rz(2.545971561244885) q[2];
sx q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(2.4896939782463416) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(2.678194473326994) q[1];
sx q[1];
sx q[2];
rz(0.20985247736482915) q[2];
sx q[2];
rz(-pi) q[2];
cx q[1],q[2];
cx q[0],q[1];
sx q[0];
rz(0.39443331788360547) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(2.244283959286128) q[1];
sx q[1];
rz(-pi) q[2];
sx q[2];
rz(0.870768964037409) q[2];
sx q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];