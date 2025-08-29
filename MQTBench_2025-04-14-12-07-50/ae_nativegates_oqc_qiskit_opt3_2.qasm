// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg eval[1];
qreg q[1];
creg meas[2];
rz(-pi/2) eval[0];
sx eval[0];
rz(-1.2535535107721882) eval[0];
rz(0.32175055439664124) q[0];
sx q[0];
rz(pi/2) q[0];
ecr eval[0],q[0];
rz(2.9847769682453915) q[0];
sx q[0];
rz(-2.2652945924214523) q[0];
sx q[0];
rz(-0.15681568534439982) q[0];
ecr eval[0],q[0];
rz(-1.888039142817604) eval[0];
sx eval[0];
rz(-pi/2) eval[0];
rz(-1.2725245528241058) q[0];
sx q[0];
rz(-1.2623499982390847) q[0];
sx q[0];
rz(-1.4777325980704799) q[0];
barrier eval[0],q[0];
measure eval[0] -> meas[0];
measure q[0] -> meas[1];