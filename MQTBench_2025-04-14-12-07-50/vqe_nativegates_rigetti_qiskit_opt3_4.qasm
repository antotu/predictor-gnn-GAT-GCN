// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-pi/2) q[0];
rx(-0.37611916727300176) q[0];
rx(-pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[2];
rx(2.3236195543808087) q[2];
rz(-pi/2) q[3];
rx(-2.2220642332349296) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(-pi) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-2.7479389301864003) q[0];
rx(0.7242029644711572) q[1];
rx(2.567327710175106) q[2];
rx(0.7312878641313934) q[3];
rz(pi) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(2.604031249184111) q[0];
rz(pi/2) q[0];
rx(2.341900410339846) q[1];
rz(pi/2) q[1];
rx(3.141587540981729) q[2];
rz(-1.5707963267885363) q[2];
rx(2.5221324188272938) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];