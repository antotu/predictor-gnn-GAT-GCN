// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(-2.7123889803846897) q[0];
rx(1.9999999999999998) q[1];
cz q[0],q[1];
rx(2.889652880639957) q[1];
cz q[0],q[1];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(-2.7123889803846897) q[0];
rz(-2.7123889803846906) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rx(2.889652880639957) q[1];
cz q[0],q[1];
rz(-pi/2) q[0];
rx(0.997410300663719) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(0.7010554642065728) q[1];
rz(-pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[0];
rx(0.6754855676383551) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(1.732846778717533) q[1];
rz(pi/2) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];