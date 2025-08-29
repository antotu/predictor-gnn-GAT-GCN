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
rx(-1.4718087724558806) q[0];
rz(-pi/2) q[1];
rx(2.6876098881549924) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(-2.2320807855518274) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(-pi/2) q[3];
rx(-1.481338253538893) q[3];
cz q[0],q[3];
rx(4.604410122956818) q[0];
cz q[1],q[3];
rx(2.032914663047095) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(5.723286290565735) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(4.051995848376671) q[3];
cz q[0],q[3];
rx(0.5595759241857634) q[0];
cz q[1],q[3];
rx(-3.0985645803850153) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(-3.9080226787823538) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(2.816148262045236) q[3];
cz q[0],q[3];
rx(3.5089210879703647) q[0];
rz(pi/2) q[0];
cz q[1],q[3];
rx(-5.42350753163803) q[1];
rz(pi/2) q[1];
cz q[2],q[3];
rx(0.8305952318968889) q[2];
rz(pi/2) q[2];
rx(2.3424434445975253) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];