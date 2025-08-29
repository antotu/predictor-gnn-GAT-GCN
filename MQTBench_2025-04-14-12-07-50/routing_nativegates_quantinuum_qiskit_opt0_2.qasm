// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-2.2242137216050706) q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(-2.4168414602560393) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(pi/2) q[0],q[1];
ry(pi/2) q[0];
rx(pi) q[0];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(-2.640675597224334) q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[1];
ry(1.925167327940615) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(pi/2) q[0],q[1];
ry(pi/2) q[0];
rx(pi) q[0];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(2.8091241152290536) q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[1];
ry(2.3961669309036977) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rzz(pi/2) q[0],q[1];
ry(pi/2) q[0];
rx(pi) q[0];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(-0.6500425498711135) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rx(-pi/2) q[1];
ry(-2.9709672884113805) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];