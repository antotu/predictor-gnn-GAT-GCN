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
rz(-1.1415926535897931) q[0];
rx(1.9999999999999998) q[1];
cz q[0],q[1];
rx(2.889652880639957) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(1.9999999999999998) q[2];
cz q[0],q[2];
rx(2.889652880639957) q[2];
cz q[0],q[2];
rx(pi/2) q[0];
rz(-4.283185307179586) q[0];
cz q[1],q[2];
rx(2.889652880639957) q[2];
cz q[1],q[2];
rx(1.9999999999999998) q[1];
cz q[0],q[1];
rx(2.889652880639957) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(-2.7123889803846906) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rx(2.889652880639957) q[2];
cz q[0],q[2];
rx(0.19066081935082357) q[0];
cz q[1],q[2];
rx(2.889652880639957) q[2];
cz q[1],q[2];
rx(0.6439832854145485) q[1];
rz(pi) q[1];
rz(pi/2) q[2];
rx(0.8071087661396126) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(0.5811797685437093) q[0];
rz(pi/2) q[0];
rx(2.421932439550455) q[1];
rz(pi/2) q[1];
rx(2.4339595267227887) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];