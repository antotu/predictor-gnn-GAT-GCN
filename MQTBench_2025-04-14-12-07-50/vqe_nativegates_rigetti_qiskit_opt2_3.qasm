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
rx(-1.7530913330244966) q[0];
rz(pi/2) q[1];
rx(1.5612722609980203) q[1];
rz(pi/2) q[2];
rx(2.3416179221421327) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(1.8842881806789606) q[0];
rx(0.08724522470079456) q[1];
rz(pi) q[1];
rx(2.5111721376702105) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-3.131916866432578) q[0];
rz(pi/2) q[0];
rx(2.117223020809614) q[1];
rz(-pi/2) q[1];
rx(0.5598325914267324) q[2];
rz(-pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];