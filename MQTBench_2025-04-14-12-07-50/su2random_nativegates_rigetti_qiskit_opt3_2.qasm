// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-1.5833190584738102) q[0];
rx(1.677010009067467) q[0];
rz(1.9740114120982986) q[0];
rz(1.3261291942907256) q[1];
rx(3.056954793457603) q[1];
rz(-2.396330173698055) q[1];
cz q[0],q[1];
rx(1.0623035573948882) q[0];
rx(pi/2) q[1];
rz(0.20690274020978094) q[1];
cz q[0],q[1];
rx(-0.0016707338130231965) q[0];
rz(4.335060299657328) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(0.013289198184835102) q[0];
rz(1.935639039780913) q[0];
rz(-3.0958099906960967) q[1];
rx(1.4345250215587046) q[1];
rz(0.6907758475078247) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];