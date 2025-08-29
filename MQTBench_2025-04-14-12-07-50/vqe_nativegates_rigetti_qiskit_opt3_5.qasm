// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
rx(-pi) q[0];
rz(-3*pi/2) q[0];
rz(pi/2) q[1];
rx(-1.570808469775425) q[1];
rz(pi/2) q[2];
rx(2.3866667035034044) q[2];
rz(pi/2) q[3];
rx(-2.12468656114049) q[3];
rz(pi/2) q[4];
rx(-1.1167354960390439) q[4];
cz q[3],q[4];
rx(pi/2) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(-1.5694625039612429) q[0];
rx(pi/2) q[1];
rx(1.5704908706052476) q[2];
rz(pi) q[2];
rx(2.2122778614231153) q[3];
rx(0.5206878188374803) q[4];
cz q[3],q[4];
rx(pi/2) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(-1.5726073968704484) q[0];
rz(pi/2) q[0];
rx(3.141474283779201) q[1];
rz(pi/2) q[1];
rx(2.0900996772356657) q[2];
rz(pi/2) q[2];
rx(3.1406528241900635) q[3];
rz(-pi/2) q[3];
rx(0.6531205272623513) q[4];
rz(-pi/2) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];