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
rz(1.7048283808226188) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-0.7509864442676379) q[1];
sx q[1];
rz(-2.6597279951942427) q[1];
sx q[1];
rz(0.6910791569211359) q[1];
ecr q[0],q[1];
sx q[0];
rz(0.8258912742828404) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-0.10502143290777832) q[1];
sx q[1];
rz(-1.8754889808102924) q[1];
sx q[1];
rz(-1.2329067156290368) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.009380453438401659) q[0];
sx q[0];
rz(-0.7590702092666635) q[1];
sx q[1];
rz(-2.6905658417935303) q[1];
sx q[1];
rz(2.382522444323129) q[1];
ecr q[0],q[1];
rz(-pi/2) q[0];
sx q[0];
rz(-1.4185242502747641) q[0];
sx q[0];
rz(3.118254284263643) q[1];
sx q[1];
rz(-1.5009016156560904) q[1];
sx q[1];
rz(2.8190261157057144) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];