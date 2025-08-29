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
rz(1.2563521159911737) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.180466301189611) q[1];
sx q[1];
rz(-pi) q[2];
sx q[2];
rz(0.1795128369001171) q[2];
sx q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(1.4407681829933985) q[0];
sx q[0];
sx q[1];
rz(1.2713244709789624) q[1];
sx q[1];
rz(-pi) q[1];
sx q[2];
rz(2.1996587119069515) q[2];
sx q[2];
rz(-pi) q[2];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(2.798301395057364) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(2.678814222662661) q[1];
sx q[1];
sx q[2];
rz(2.6988833421202374) q[2];
sx q[2];
rz(-pi) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];