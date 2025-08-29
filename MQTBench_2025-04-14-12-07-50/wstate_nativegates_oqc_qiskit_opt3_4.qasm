// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[4];
creg meas[4];
sx q[0];
rz(3*pi/4) q[0];
sx q[0];
rz(-pi) q[0];
sx q[1];
rz(-0.9553166181245079) q[1];
sx q[1];
sx q[2];
rz(-pi/3) q[2];
sx q[2];
rz(-1.2490457723982544) q[3];
sx q[3];
rz(pi/2) q[3];
ecr q[2],q[3];
rz(-2.9764439761751653) q[2];
sx q[2];
rz(-1.2933908103048601) q[2];
sx q[2];
rz(2.1175012291740245) q[2];
ecr q[1],q[2];
rz(-0.1901256033464671) q[1];
sx q[1];
rz(-1.831953737697921) q[1];
sx q[1];
rz(-0.9302740141154686) q[1];
ecr q[0],q[1];
rz(-pi/2) q[0];
sx q[0];
rz(-pi/4) q[0];
sx q[0];
rz(-pi/2) q[0];
rz(-pi/2) q[1];
sx q[1];
rz(0.32175055439664213) q[1];
rz(pi/2) q[2];
sx q[2];
rz(-0.3217505543966417) q[2];
rz(pi/2) q[3];
sx q[3];
rz(-0.32175055439664213) q[3];
sx q[3];
ecr q[2],q[3];
sx q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
x q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];