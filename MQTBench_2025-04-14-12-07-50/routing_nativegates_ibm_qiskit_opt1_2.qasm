// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
sx q[0];
rz(1.370887292532755) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(0.8023824286985315) q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
rz(0.8799559655573272) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(1.2517296921128036) q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
rz(0.07743674924969168) q[0];
sx q[0];
rz(-pi) q[0];
sx q[1];
rz(0.7649862464528918) q[1];
sx q[1];
rz(-pi) q[1];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(1.1186963190862294) q[0];
sx q[0];
sx q[1];
rz(2.865585966772888) q[1];
sx q[1];
rz(-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];