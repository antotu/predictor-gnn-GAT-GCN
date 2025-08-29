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
rz(1.835379324851103) q[0];
sx q[0];
rz(-pi) q[0];
sx q[1];
rz(1.3284891508720005) q[1];
sx q[1];
rz(-pi) q[1];
cx q[0],q[1];
sx q[0];
rz(2.1685636226640037) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.6871448938530813) q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
rz(0.8397251778459718) q[0];
sx q[0];
sx q[1];
rz(2.1796848747010937) q[1];
sx q[1];
rz(-pi) q[1];
cx q[0],q[1];
sx q[0];
rz(2.3938578165814697) q[0];
sx q[0];
rz(-pi) q[0];
sx q[1];
rz(2.11859278321303) q[1];
sx q[1];
rz(-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];