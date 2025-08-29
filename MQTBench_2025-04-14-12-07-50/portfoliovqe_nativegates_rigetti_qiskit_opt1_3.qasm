// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi/2) q[0];
rx(5.829720012308058) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[1];
rx(-3.011430315220854) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(-0.6084211676606804) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(-0.8713560340332519) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(4.344671914341618) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(3.125000175533401) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(1.8995959318541458) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(5.374839631748378) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(-1.6587686268837654) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(-3.0351398061489925) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(-2.2619137212855636) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[2];
rx(2.6631009910275525) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];