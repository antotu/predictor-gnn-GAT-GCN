// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-2.965618073206091) q[0];
ry(1.6922762732704435) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.6165541636565184) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-0.8988549380710129) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.6149075627837064) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(2.340218870743609) q[1];
rxx(pi/2) q[0],q[1];
rz(2.449908492107146) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-0.2240961169143193) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];