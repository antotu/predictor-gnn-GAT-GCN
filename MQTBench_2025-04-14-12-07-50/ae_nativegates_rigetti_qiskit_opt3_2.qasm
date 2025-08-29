// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg eval[1];
qreg q[1];
creg meas[2];
rz(-pi/2) eval[0];
rx(pi/2) eval[0];
rz(3.6001740347120794) eval[0];
rz(-pi/2) q[0];
cz eval[0],q[0];
rx(pi) eval[0];
rx(0.9272952180016125) q[0];
rz(pi) q[0];
cz eval[0],q[0];
rz(-2.6830112724675086) eval[0];
rx(pi/2) eval[0];
rz(pi/2) eval[0];
rx(1.8545904360032244) q[0];
rz(pi/2) q[0];
barrier eval[0],q[0];
measure eval[0] -> meas[0];
measure q[0] -> meas[1];