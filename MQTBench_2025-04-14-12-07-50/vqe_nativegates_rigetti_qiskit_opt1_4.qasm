// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rx(-pi) q[0];
rz(-pi) q[0];
rz(-pi/2) q[1];
rx(-0.00019477489050561238) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[2];
rx(-3.1402031562125376) q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
rx(1.0678668040942287) q[3];
rz(pi/2) q[3];
cz q[2],q[3];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rx(-pi) q[0];
rz(-pi) q[0];
rz(-pi/2) q[1];
rx(pi/2) q[1];
rz(-pi/2) q[1];
rz(-pi/2) q[2];
rx(pi/2) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[3];
rx(0.37128066986462577) q[3];
rz(-pi/2) q[3];
cz q[2],q[3];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rx(-pi) q[0];
rz(-pi) q[0];
rz(pi/2) q[1];
rx(1.5708061395775903) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(1.5697656035623095) q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
rx(1.7024465792334667) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];