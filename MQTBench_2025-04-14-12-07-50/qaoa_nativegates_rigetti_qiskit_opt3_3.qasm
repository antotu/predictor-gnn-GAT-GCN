// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi/2) q[0];
rx(pi/2) q[0];
rz(-1.046209001261989) q[0];
rx(-1.9655768210315483) q[1];
rz(-pi) q[1];
cz q[0],q[1];
rx(pi) q[0];
rx(0.7587257957805101) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(0.5245873255329094) q[0];
rx(pi/2) q[1];
rz(-1.176015832558245) q[1];
rx(-2.988198341904802) q[2];
cz q[0],q[2];
rx(pi) q[0];
rx(0.7587257957805101) q[2];
rz(pi) q[2];
cz q[0],q[2];
rz(-pi) q[0];
rx(-0.9686546090292392) q[0];
rx(2.9881983419048015) q[2];
cz q[1],q[2];
rx(0.7587257957805109) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(-2.539450935824135) q[1];
cz q[0],q[1];
rx(-1.6322491166567494) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(2.1729380445605537) q[2];
cz q[0],q[2];
rx(-1.6322491166567494) q[2];
cz q[0],q[2];
rx(-6.732398630039713) q[0];
cz q[1],q[2];
rx(-1.6322491166567494) q[2];
cz q[1],q[2];
rx(-6.732398630039713) q[1];
rz(1.12158300393477) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];