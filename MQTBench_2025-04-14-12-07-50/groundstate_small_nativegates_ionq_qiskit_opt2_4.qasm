// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(2.8468440547011875) q[0];
ry(pi) q[0];
rz(1.0538816031682279) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi) q[0];
rz(-2.551434672233561) q[2];
rxx(pi/2) q[0],q[2];
rxx(pi/2) q[1],q[2];
rz(2.852586567614134) q[3];
rxx(pi/2) q[0],q[3];
ry(pi/2) q[0];
rz(1.7681737447096424) q[0];
rx(-pi) q[3];
rxx(pi/2) q[1],q[3];
ry(-pi/2) q[1];
rz(-0.0797172770855834) q[1];
rxx(pi/2) q[0],q[1];
rx(-1.3985056893120804) q[0];
rx(-0.9548103687773459) q[1];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rz(-1.821087199746941) q[2];
rxx(pi/2) q[0],q[2];
rx(1.5280706259709367) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[3];
rz(-1.4133595958694656) q[3];
rxx(pi/2) q[0],q[3];
rx(-6.031716962111727) q[3];
rxx(pi/2) q[1],q[3];
rxx(pi/2) q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];