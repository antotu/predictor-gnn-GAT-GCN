// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(2.2998109168831156) q[0];
ry(-0.7179701708849899) q[1];
ry(-pi/2) q[2];
ry(1.4445445663210008) q[3];
ry(2.770105096200172) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.84270576715446) q[0];
rx(-pi/2) q[0];
rz(1.572261592026888) q[1];
rx(-pi) q[1];
rz(-2.2882202517186805) q[2];
rx(-pi) q[2];
rz(-0.04572814244798362) q[3];
rx(-pi) q[3];
rx(-pi/2) q[4];
ry(-2.6022433123904127) q[4];
rxx(pi/2) q[3],q[4];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(3.1409127862028434) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-1.5711652773881473) q[1];
rx(-pi/2) q[2];
ry(1.5696162704220218) q[2];
rx(-pi/2) q[3];
ry(1.5704900949436877) q[3];
rx(-pi/2) q[4];
ry(-1.688335985242603) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];