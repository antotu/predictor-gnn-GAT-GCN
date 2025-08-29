// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-0.13994885534499257) q[0];
rx(pi/2) q[0];
rz(3.0136966032513204) q[0];
rz(2.1745737117775903) q[1];
rx(pi/2) q[1];
rz(2.880325614833268) q[1];
cz q[0],q[1];
rz(-2.1706213629047655) q[2];
rx(pi/2) q[2];
rz(-0.5016976302187564) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(1.2336683955945063) q[3];
rx(pi/2) q[3];
rz(3.4695796706076854) q[3];
cz q[0],q[3];
rx(pi/2) q[0];
rz(0.8330209852249171) q[0];
cz q[1],q[3];
rx(pi/2) q[1];
rz(3.5479069472224083) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(pi/2) q[2];
rz(3.0585801440617963) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(pi/2) q[3];
rz(3.1373167431137405) q[3];
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