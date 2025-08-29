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
x q[0];
rz(pi/2) q[0];
sx q[1];
rz(1.5367694284158127) q[1];
sx q[1];
rz(pi/2) q[1];
sx q[2];
rz(1.5033045275011814) q[2];
sx q[2];
rz(pi/2) q[2];
rz(-pi) q[3];
sx q[3];
rz(2.6498952785741627) q[3];
ecr q[2],q[3];
sx q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(-1.5710473016053017) q[0];
sx q[0];
rz(-pi/2) q[0];
sx q[1];
rz(0.07111569924040184) q[1];
sx q[1];
rz(pi/2) q[1];
sx q[2];
rz(3.1369489007856757) q[2];
sx q[2];
rz(pi/2) q[2];
rz(-pi) q[3];
sx q[3];
rz(1.5347421807918806) q[3];
ecr q[2],q[3];
sx q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(-1.5707312091774686) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.570752068925131) q[1];
sx q[1];
sx q[2];
rz(0.4922339204756181) q[2];
sx q[2];
rz(-pi) q[2];
sx q[3];
rz(1.5076395090627166) q[3];
sx q[3];
rz(-pi) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];