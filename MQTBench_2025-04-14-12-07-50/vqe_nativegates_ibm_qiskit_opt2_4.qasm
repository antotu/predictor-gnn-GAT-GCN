// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
sx q[0];
rz(3.14152424446233) q[0];
sx q[0];
rz(-pi) q[0];
rz(-pi) q[1];
sx q[1];
rz(1.552939277521265) q[1];
sx q[1];
sx q[2];
rz(2.863047730688189) q[2];
sx q[2];
rz(-pi) q[2];
sx q[3];
rz(1.5519234094315593) q[3];
sx q[3];
rz(-pi) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
sx q[0];
rz(1.7903478559150532) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(0.0644298470297695) q[1];
sx q[1];
sx q[2];
rz(3.079577156332106) q[2];
sx q[2];
rz(-pi) q[2];
rz(-pi) q[3];
sx q[3];
rz(3.1220083230442146) q[3];
sx q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
sx q[0];
rz(1.7902905689710273) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.5707612229525534) q[1];
sx q[1];
sx q[2];
rz(2.8624319043481954) q[2];
sx q[2];
rz(-pi) q[2];
rz(-pi) q[3];
sx q[3];
rz(1.5711688565403685) q[3];
sx q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];