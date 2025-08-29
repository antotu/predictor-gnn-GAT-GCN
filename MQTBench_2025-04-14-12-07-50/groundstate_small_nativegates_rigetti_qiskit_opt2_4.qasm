// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(1.6650436306822272) q[0];
rx(pi/2) q[0];
rz(-0.49800165670929) q[0];
rz(0.06560303827254188) q[1];
rx(pi/2) q[1];
rz(2.302465287625444) q[1];
cz q[0],q[1];
rz(0.444665424705347) q[2];
rx(pi/2) q[2];
rz(0.6389769851751161) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(1.088877506519518) q[3];
rx(pi/2) q[3];
rz(-1.101207574553679) q[3];
cz q[0],q[3];
rx(pi/2) q[0];
rz(2.795783580916753) q[0];
cz q[1],q[3];
rx(pi/2) q[1];
rz(4.241073806282366) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(pi/2) q[2];
rz(-0.8739338651361077) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(pi/2) q[3];
rz(-0.27702425804749353) q[3];
cz q[0],q[3];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[1],q[3];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[2],q[3];
rx(pi/2) q[2];
rz(pi/2) q[2];
rx(pi/2) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];