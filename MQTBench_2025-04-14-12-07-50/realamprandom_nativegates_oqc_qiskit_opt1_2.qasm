// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[2];
creg meas[2];
sx q[0];
rz(1.704757879308132) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi) q[1];
sx q[1];
rz(3.0112043102794672) q[1];
ecr q[0],q[1];
sx q[0];
rz(2.3018560275705333) q[0];
sx q[0];
rz(-pi/2) q[0];
rz(-pi) q[1];
sx q[1];
rz(-1.563280899135842) q[1];
ecr q[0],q[1];
sx q[0];
rz(-3.1322119352256292) q[0];
sx q[0];
rz(-pi/2) q[0];
rz(-pi) q[1];
sx q[1];
rz(1.7291536732871133) q[1];
ecr q[0],q[1];
sx q[0];
rz(-1.2444656817555657) q[0];
sx q[0];
sx q[1];
rz(1.6369627429575306) q[1];
sx q[1];
rz(-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];