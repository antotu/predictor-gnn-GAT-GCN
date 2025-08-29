// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[0],q[1];
rx(2.956271312189655) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[2];
rx(2.956271312189655) q[2];
cz q[0],q[2];
rx(2.2932357602636833) q[0];
cz q[1],q[2];
rx(2.956271312189655) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(-2.4191532201210064) q[1];
cz q[0],q[1];
rx(2.595972623546055) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(2.2932357602636833) q[2];
cz q[0],q[2];
rx(2.595972623546055) q[2];
cz q[0],q[2];
rx(0.8174994745332426) q[0];
cz q[1],q[2];
rx(2.595972623546055) q[2];
cz q[1],q[2];
rx(0.8174994745332426) q[1];
rz(2.3882958013281392) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];