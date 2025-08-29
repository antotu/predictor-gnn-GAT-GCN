// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;

qreg q[2];
creg meas[2];
sx q[0];
sx q[1];
rz(0.04266372786254724*pi) q[0];
rz(0.6162350690042093*pi) q[1];
sx q[0];
sx q[1];
rz(1.0*pi) q[0];
sx q[1];
sx q[0];
rz(1.5*pi) q[0];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
x q[0];
rz(0.7628893575171558*pi) q[1];
sx q[0];
x q[1];
x q[0];
rz(0.5*pi) q[1];
rz(3.5*pi) q[0];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(0.0029858910663287078*pi) q[1];
rz(0.5*pi) q[0];
sx q[1];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
rz(1.048469707346098*pi) q[0];
sx q[1];
sx q[0];
rz(2.9765462354236174*pi) q[1];
sx q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
