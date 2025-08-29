// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg eval[3];
qreg q[1];
creg meas[4];
rz(-pi/2) eval[0];
rx(-pi/2) eval[0];
rz(-pi/2) eval[1];
rx(-pi/2) eval[1];
rz(-pi/2) eval[2];
rx(-pi/2) eval[2];
rz(pi/2) q[0];
rx(0.6435011087932844) q[0];
cz eval[0],q[0];
rx(0.9272952180016124) q[0];
rz(pi) q[0];
cz eval[0],q[0];
rx(0.9272952180016122) q[0];
rz(-pi) q[0];
cz eval[1],q[0];
rx(1.8545904360032246) q[0];
rz(pi) q[0];
cz eval[1],q[0];
rx(1.8545904360032244) q[0];
cz eval[2],q[0];
rx(2.5740044351731375) q[0];
rz(-pi) q[0];
cz eval[2],q[0];
rx(pi/2) eval[2];
rz(pi/2) eval[2];
cp(-pi/2) eval[1],eval[2];
cp(-pi/4) eval[0],eval[2];
rx(pi/2) eval[1];
rz(pi/2) eval[1];
cp(-pi/2) eval[0],eval[1];
rx(pi/2) eval[0];
rz(pi/2) eval[0];
rx(1.003208108378241) q[0];
rz(-pi/2) q[0];
barrier eval[0],eval[1],eval[2],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure eval[2] -> meas[2];
measure q[0] -> meas[3];