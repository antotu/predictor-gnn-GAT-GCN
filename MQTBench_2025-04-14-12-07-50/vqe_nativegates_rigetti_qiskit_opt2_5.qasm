// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
rz(-pi/2) q[0];
rx(-1.0497179014561389) q[0];
rz(pi/2) q[1];
rx(0.0036272424361540683) q[1];
rx(-pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[3];
rx(1.3334049241498764) q[3];
rz(pi/2) q[4];
rx(2.4872888041296304) q[4];
cz q[3],q[4];
rx(pi/2) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(8.795259691562541e-05) q[0];
rx(pi/2) q[1];
rx(pi/2) q[2];
rx(pi/2) q[3];
rx(3.1406477124252983) q[4];
rz(pi) q[4];
cz q[3],q[4];
rx(pi/2) q[3];
rz(pi) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(-0.5363536607449523) q[0];
rz(pi/2) q[0];
rx(1.5746523333327727) q[1];
rz(pi/2) q[1];
rx(2.4576201430434725) q[2];
rz(pi/2) q[2];
rx(2.904262106676451) q[3];
rz(pi/2) q[3];
rx(2.4867271293082993) q[4];
rz(pi/2) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];