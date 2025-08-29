// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[3];
creg meas[3];
sx q[0];
rz(0.6702674733431842) q[0];
sx q[0];
rz(pi/2) q[0];
sx q[1];
rz(-2.650416892674026) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi) q[2];
sx q[2];
rz(1.12985172084732) q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(-1.3789935193472722) q[0];
sx q[0];
rz(-pi/2) q[0];
sx q[1];
rz(-1.017617685459097) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi) q[2];
sx q[2];
rz(1.2992470823786997) q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(2.0976349560429473) q[0];
sx q[0];
sx q[1];
rz(1.2420569940045807) q[1];
sx q[1];
rz(-pi) q[1];
sx q[2];
rz(2.850331403691836) q[2];
sx q[2];
rz(-pi) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];