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
rx(2.692877891858986) q[0];
rz(-pi/2) q[1];
rx(6.571801806749844) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(-2.035853934995475) q[2];
cz q[0],q[2];
rx(-0.014664570274997766) q[0];
cz q[1],q[2];
rx(2.902723812138652) q[1];
cz q[0],q[1];
rx(-2.9475528269991815) q[2];
cz q[0],q[2];
rx(3.526821596849948) q[0];
cz q[1],q[2];
rx(4.975777260537638) q[1];
cz q[0],q[1];
rx(0.43146197414048554) q[2];
cz q[0],q[2];
rx(-0.4940372670269559) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rx(5.0699488378061295) q[1];
rz(pi/2) q[1];
rx(-2.502679090559901) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];