// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(-4.712571665352587) q[0],q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(-4.712571665352587) q[0],q[2];
rx(0.7852135679731139) q[0];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(-4.712571665352587) q[1],q[3];
rx(0.7852135679731139) q[1];
rzz(-0.7852862044090634) q[0],q[1];
rzz(-4.712571665352587) q[2],q[3];
rx(0.7852135679731139) q[2];
rzz(-0.7852862044090634) q[0],q[2];
rx(4.712761350957048) q[0];
rx(0.7852135679731139) q[3];
rzz(-0.7852862044090634) q[1],q[3];
rx(4.712761350957048) q[1];
rzz(-0.7852862044090634) q[2],q[3];
rx(4.712761350957048) q[2];
rx(4.712761350957048) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];