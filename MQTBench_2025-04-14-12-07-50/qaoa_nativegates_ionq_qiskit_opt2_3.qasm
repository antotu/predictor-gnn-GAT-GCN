// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rxx(2.867885793401212) q[0],q[1];
rxx(2.867885793401212) q[0],q[2];
rz(-2.646373433413279) q[0];
rxx(2.867885793401212) q[1],q[2];
rz(-2.646373433413279) q[1];
rxx(0.8544668851573389) q[0],q[1];
rz(-2.646373433413279) q[2];
rxx(0.8544668851573389) q[0],q[2];
rz(2.769601873436134) q[0];
ry(pi/2) q[0];
rxx(0.8544668851573389) q[1],q[2];
rz(2.769601873436134) q[1];
ry(pi/2) q[1];
rz(2.769601873436134) q[2];
ry(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];