// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rx(-5.853981633974483) q[0];
ry(-pi/2) q[1];
rz(-1.1415926535897931) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[1];
rz(9.172838187819544) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[1];
ry(pi/2) q[1];
ry(-pi/2) q[2];
rz(-1.1415926535897931) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[2];
rz(9.172838187819544) q[2];
rxx(pi/2) q[0],q[2];
ry(-2.71238898038469) q[0];
rz(-pi/2) q[0];
rx(-pi) q[2];
rxx(pi/2) q[1],q[2];
rz(9.172838187819544) q[2];
rxx(pi/2) q[1],q[2];
rz(2.0) q[1];
rxx(pi/2) q[0],q[1];
rx(-3*pi/2) q[0];
rx(-pi/2) q[1];
rz(9.172838187819544) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[1];
ry(pi/2) q[1];
ry(-pi/2) q[2];
rz(-2.7123889803846897) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[2];
rz(9.172838187819544) q[2];
rxx(pi/2) q[0],q[2];
rz(0.9119977397150745) q[0];
rx(-pi/2) q[0];
rx(-pi) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
rz(9.172838187819544) q[2];
rxx(pi/2) q[1],q[2];
rz(0.8158159113386159) q[1];
rx(-pi) q[1];
rx(-pi/2) q[2];
ry(0.1550930299769081) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.9918567101253837) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(0.024034362329722447) q[1];
rx(-pi/2) q[2];
ry(0.2155712780246356) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];