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
rx(4.846350532897925) q[0];
rz(-pi/2) q[1];
rx(-1.4404079834845702) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rz(-pi/2) q[2];
rx(2.410532952814156) q[2];
cz q[0],q[2];
rx(4.704873552725635) q[0];
cz q[1],q[2];
rx(1.5614156084307327) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(1.4124389803026796) q[2];
cz q[0],q[2];
rx(1.2444656817555668) q[0];
cz q[1],q[2];
rx(3.075426237427159) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rx(1.062554723574571) q[2];
cz q[0],q[2];
rx(0.5550554224571163) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rx(4.306242740899814) q[1];
rz(pi/2) q[1];
rx(1.2779580843901157) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];