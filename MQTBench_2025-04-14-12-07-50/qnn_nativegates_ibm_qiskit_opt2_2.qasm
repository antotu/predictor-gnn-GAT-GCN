// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(pi/2) q[0];
sx q[0];
rz(-1.1415926535897931) q[0];
rz(pi/2) q[1];
sx q[1];
rz(-2.7123889803846897) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
sx q[0];
rz(-5.853981633974483) q[0];
rz(pi/2) q[1];
sx q[1];
rz(-2.7123889803846897) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
sx q[0];
rz(2.2064249435530723) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(2.660145386421364) q[1];
sx q[1];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(3.1310450569969337) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(2.5168804373815714) q[1];
sx q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];