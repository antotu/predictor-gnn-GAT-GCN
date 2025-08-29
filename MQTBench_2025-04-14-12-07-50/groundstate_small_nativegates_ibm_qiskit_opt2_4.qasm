// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(1.681310929749456) q[0];
sx q[0];
rz(0.46929136831778395) q[0];
rz(1.4763028425584759) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
sx q[1];
rz(4.358175288710084) q[1];
rz(-0.061387093396215064) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(pi/2) q[2];
sx q[2];
rz(2.0506975355012083) q[2];
rz(0.900027146401662) q[3];
cx q[0],q[3];
sx q[0];
rz(0.12852508963122622) q[0];
cx q[1],q[3];
cx q[0],q[1];
rz(pi/2) q[1];
sx q[1];
rz(2.546546471568517) q[1];
cx q[2],q[3];
cx q[0],q[2];
cx q[1],q[2];
rz(pi/2) q[2];
sx q[2];
rz(-1.5144031088918517) q[2];
rz(pi/2) q[3];
sx q[3];
rz(1.6964527092574153) q[3];
cx q[0],q[3];
sx q[0];
rz(pi/2) q[0];
cx q[1],q[3];
sx q[1];
rz(pi/2) q[1];
cx q[2],q[3];
sx q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
sx q[3];
rz(-0.22054706472018992) q[3];
sx q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];