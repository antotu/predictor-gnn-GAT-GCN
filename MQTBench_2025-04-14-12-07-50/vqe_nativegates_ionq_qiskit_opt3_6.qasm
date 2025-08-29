// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
ry(2.0577377888889665) q[0];
ry(1.5695162390091038) q[1];
ry(-pi/2) q[2];
ry(-0.07521673593138033) q[3];
ry(1.6717463600227154) q[4];
ry(-1.677894492740577) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.6121032997116562) q[0];
rx(-pi/2) q[0];
rz(-2.553526977967562) q[1];
rx(-pi) q[1];
rz(0.0009148166641672617) q[2];
rx(-pi) q[2];
rz(2.2132512183280877) q[3];
rx(-pi) q[3];
rz(2.2094516494702763) q[4];
rx(-pi) q[4];
rx(-pi/2) q[5];
ry(-3.0344268647407056) q[5];
rxx(pi/2) q[4],q[5];
ry(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-2.333161195144114) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-0.8262301288757621) q[1];
rx(-pi/2) q[2];
ry(-1.572407590320708) q[2];
rx(-pi/2) q[3];
ry(-1.5707897870383025) q[3];
rx(-pi/2) q[4];
ry(3.0159230947602347) q[4];
rx(-pi/2) q[5];
ry(-1.5772858449103522) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];