// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-pi/2) q[0];
rx(1.6378151300742876) q[0];
rz(pi/2) q[1];
rx(0.21539776839314176) q[1];
cz q[0],q[1];
rx(2.978511603649972) q[0];
rx(2.4407910064616964) q[1];
cz q[0],q[1];
rx(-2.5575328952809495) q[0];
rx(0.6524442946676252) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(2.0759731957220513) q[0];
rz(pi/2) q[0];
rx(0.8688710182037909) q[1];
rz(pi/2) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];