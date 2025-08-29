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
rz(3.502905631792761*pi) q[0];
rz(2.5060754061680908*pi) q[1];
sx q[0];
sx q[1];
rz(2.876464274459205*pi) q[0];
rz(2.565049805376046*pi) q[1];
sx q[0];
sx q[1];
rz(3.0052592329731276*pi) q[0];
rz(1.136062238089294*pi) q[1];
sx q[0];
sx q[1];
rz(1.5*pi) q[0];
sx q[1];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
rz(1.0*pi) q[0];
rz(0.5729788346668241*pi) q[1];
sx q[0];
x q[1];
rz(0.9834797692474249*pi) q[0];
rz(0.5*pi) q[1];
x q[0];
sx q[1];
rz(3.5*pi) q[0];
ecr q[0],q[1];
sx q[0];
rz(3.996733280208529*pi) q[1];
rz(0.5*pi) q[0];
sx q[1];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.7180444656714213*pi) q[0];
rz(1.5809851583074153*pi) q[1];
sx q[0];
sx q[1];
rz(2.402294342121121*pi) q[0];
rz(2.5029238047735896*pi) q[1];
sx q[0];
sx q[1];
rz(3.5953263992892253*pi) q[0];
rz(0.4181355553648818*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
