// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(-1.2109574689062508) q[0],q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(-1.2109574689062508) q[0],q[2];
rx(2.643518052752011) q[0];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(-1.2109574689062508) q[1],q[3];
rx(2.643518052752011) q[1];
rzz(3.639252300652877) q[0],q[1];
ry(pi/2) q[4];
rx(pi) q[4];
rzz(-1.2109574689062508) q[2],q[4];
rx(2.643518052752011) q[2];
rzz(3.639252300652877) q[0],q[2];
rx(4.353391338602381) q[0];
rzz(-1.2109574689062508) q[3],q[4];
rx(2.643518052752011) q[3];
rzz(3.639252300652877) q[1],q[3];
rx(4.353391338602381) q[1];
rx(2.643518052752011) q[4];
rzz(3.639252300652877) q[2],q[4];
rx(4.353391338602381) q[2];
rzz(3.639252300652877) q[3],q[4];
rx(4.353391338602381) q[3];
rx(4.353391338602381) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];