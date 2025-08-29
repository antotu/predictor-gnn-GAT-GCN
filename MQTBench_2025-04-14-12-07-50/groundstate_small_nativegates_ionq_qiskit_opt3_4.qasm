// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(2.6724860988054218) q[0];
ry(pi) q[0];
rz(-2.5013815884724906) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi) q[0];
rz(-1.2429024544631737) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(1.066072118934069) q[3];
rxx(pi/2) q[0],q[3];
ry(pi/2) q[0];
rz(-2.9933427456949024) q[0];
rx(-pi) q[3];
rxx(pi/2) q[1],q[3];
ry(-pi/2) q[1];
rz(-3.0991057524081196) q[1];
rxx(pi/2) q[0],q[1];
rx(-1.533562882001047) q[0];
rx(2.248201012869054) q[1];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rz(-1.8867229825279797) q[2];
rxx(pi/2) q[0],q[2];
rx(-0.5627617428893771) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[3];
rz(-2.3749711292404) q[3];
rxx(pi/2) q[0],q[3];
rx(-2.9354615676575113) q[3];
rxx(pi/2) q[1],q[3];
rxx(pi/2) q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];