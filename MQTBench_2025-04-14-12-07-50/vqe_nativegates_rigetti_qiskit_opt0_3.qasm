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
rx(-2.855187888616674) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[1];
rx(3.1067816093767853) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[2];
rx(2.816979018769854) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[0];
rx(1.3656178682785893) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
rx(-pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
rx(-2.0630344109762695) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[0];
rx(2.482582081606768) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
rx(2.7184098994375163) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
rx(-0.6149056423257417) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];