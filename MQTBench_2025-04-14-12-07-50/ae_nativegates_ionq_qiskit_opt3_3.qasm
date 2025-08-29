// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg eval[2];
qreg q[1];
creg meas[3];
rx(1.8874369415197634) eval[0];
rx(2.8836344842970636) eval[1];
rz(3*pi/4) q[0];
ry(pi/2) q[0];
rxx(pi/2) eval[0],q[0];
rz(-pi) eval[0];
rx(-pi/2) eval[0];
rz(-2.8017557441356704) q[0];
ry(2.4980915447965084) q[0];
rz(-0.3398369094541218) q[0];
rxx(pi/2) eval[0],q[0];
rz(-pi) eval[0];
rx(-1.1020387781223142) eval[0];
rz(-2.653976410874688) q[0];
ry(0.8762980611683396) q[0];
rz(-2.6539764108746873) q[0];
rxx(pi/2) eval[1],q[0];
rz(-pi) eval[1];
rx(-pi/2) eval[1];
rz(-2.6539764108746873) q[0];
ry(2.2652945924214527) q[0];
rz(-0.48761624271510584) q[0];
rxx(pi/2) eval[1],q[0];
rz(-pi) eval[1];
rx(-2.8836344842970614) eval[1];
rxx(pi/2) eval[0],eval[1];
rz(pi/4) eval[1];
rxx(pi/2) eval[0],eval[1];
rx(-pi/2) eval[1];
rz(-pi/4) eval[1];
rx(-3*pi/4) q[0];
ry(0.28379410920832654) q[0];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];