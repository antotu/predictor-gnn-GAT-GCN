// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg eval[2];
qreg q[1];
creg meas[3];
rz(-pi/2) eval[0];
sx eval[0];
rz(-2.250074793455826) eval[0];
rz(pi/2) eval[1];
sx eval[1];
rz(pi) eval[1];
sx q[0];
rz(pi/2) q[0];
cx eval[0],q[0];
x eval[0];
rz(0.9272952180016127) q[0];
cx eval[0],q[0];
rz(3.247712350326312) eval[0];
rz(-0.28379410920832804) q[0];
sx q[0];
cx eval[1],q[0];
sx q[0];
rz(1.2870022175865685) q[0];
sx q[0];
rz(-pi) q[0];
cx eval[1],q[0];
sx eval[1];
rz(pi/2) eval[1];
cx eval[0],eval[1];
rz(pi/4) eval[1];
cx eval[0],eval[1];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/4) eval[1];
rz(-pi) q[0];
sx q[0];
rz(1.2870022175865685) q[0];
sx q[0];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];