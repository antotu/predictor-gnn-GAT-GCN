// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(1.1234353614969121) q[0];
ry(-2.8125774787692346) q[1];
ry(-0.26931412950370576) q[2];
ry(1.5706216249909466) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.4843274618958495) q[0];
rx(-pi/2) q[0];
rz(-3.141539384329363) q[1];
rx(-pi/2) q[1];
rz(0.86347032528837) q[2];
rx(-pi/2) q[2];
rx(-pi/2) q[3];
ry(-0.0002995617390903033) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-1.3789545997035342) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(2.7631728072857795) q[1];
rx(-pi/2) q[2];
ry(-0.9085252815904248) q[2];
rx(-pi/2) q[3];
ry(-1.5709285427775221) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];