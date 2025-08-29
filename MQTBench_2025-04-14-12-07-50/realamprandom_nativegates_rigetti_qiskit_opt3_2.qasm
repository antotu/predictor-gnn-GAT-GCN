// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-pi/2) q[0];
rx(1.7048283808226188) q[0];
rz(-pi/2) q[1];
rx(-1.2056330879217678) q[1];
cz q[0],q[1];
rx(0.8258912742828409) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-0.009380453438400634) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(1.7230684033150279) q[0];
rz(-pi/2) q[0];
rx(-3.067910479097593) q[1];
rz(pi/2) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];