// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-1.087281869968192) q[0];
rz(-pi) q[1];
ry(-0.9491685565075609) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi) q[0];
ry(-1.0563949528392411) q[2];
rz(-pi) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(-pi) q[3];
ry(-0.788716877753577) q[3];
rxx(pi/2) q[0],q[3];
rz(-2.346614988441117) q[0];
rx(-3*pi/2) q[0];
rx(-pi) q[3];
rxx(pi/2) q[1],q[3];
rz(-1.5662130591831018) q[1];
rx(pi) q[1];
rxx(pi/2) q[0],q[1];
rxx(pi/2) q[2],q[3];
rz(-0.22539800540523602) q[2];
rx(pi/2) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(1.6753637119853924) q[3];
rx(-3*pi/2) q[3];
rxx(pi/2) q[0],q[3];
rz(-1.4683275725285547) q[0];
rx(-3*pi/2) q[0];
rxx(pi/2) q[1],q[3];
ry(-2.3218904386894033) q[1];
rxx(pi/2) q[0],q[1];
rxx(pi/2) q[2],q[3];
rz(-1.0980446273294842) q[2];
rx(pi/2) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(2.5478274694351777) q[3];
rx(-3*pi/2) q[3];
rxx(pi/2) q[0],q[3];
rz(0.909613562812357) q[0];
rx(-pi/2) q[0];
rxx(pi/2) q[1],q[3];
rz(1.3824456968794552) q[1];
rx(-pi/2) q[1];
rxx(pi/2) q[2],q[3];
rz(2.4387807528443313) q[2];
rx(-pi/2) q[2];
rz(-2.862022517185588) q[3];
rx(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];