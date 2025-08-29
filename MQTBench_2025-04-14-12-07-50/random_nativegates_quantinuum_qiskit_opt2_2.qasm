// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(pi/2) q[0];
ry(pi/2) q[0];
rz(pi/2) q[1];
ry(pi/2) q[1];
rzz(1.304903297657757) q[0],q[1];
ry(-pi/2) q[0];
rz(-pi/2) q[0];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rzz(pi/2) q[1],q[0];
ry(-3.061138875731499) q[0];
rz(0.7144206217376583) q[0];
rzz(pi/2) q[1],q[0];
ry(pi/2) q[0];
ry(pi) q[1];
rzz(pi/2) q[1],q[0];
rz(-pi/2) q[0];
ry(3.0062717024781365) q[0];
rz(-pi/2) q[1];
ry(-3.0062717024781365) q[1];
rzz(pi/2) q[1],q[0];
rx(pi/2) q[0];
rz(-1.097465716250797) q[0];
rz(pi/2) q[1];
ry(-pi/2) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];