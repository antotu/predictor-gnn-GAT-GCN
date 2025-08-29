// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.789723263711846) q[0];
ry(-0.015714906383782194) q[1];
rz(-pi) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(pi/2) q[1];
ry(-1.063952387322727) q[2];
rz(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(-2.7864565198225657) q[0];
rx(-pi) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(2.961514142292632) q[1];
rx(pi) q[1];
rxx(pi/2) q[0],q[1];
rz(-3.064885792388087) q[2];
rx(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(-2.709930536289442) q[0];
rx(-pi) q[0];
rxx(pi/2) q[1],q[2];
rz(-2.2895995437849574) q[1];
rx(pi) q[1];
rxx(pi/2) q[0],q[1];
rz(-1.2255318857079232) q[2];
rx(-pi) q[2];
rxx(pi/2) q[0],q[2];
rz(1.8252447209540996) q[0];
rx(-pi/2) q[0];
rxx(pi/2) q[1],q[2];
rz(-1.8911523078192563) q[1];
rx(-pi/2) q[1];
rz(0.11690624093249724) q[2];
rx(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];