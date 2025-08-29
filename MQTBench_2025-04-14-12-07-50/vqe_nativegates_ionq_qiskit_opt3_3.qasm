// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-0.9149658756963907) q[0];
ry(0.5421709390088866) q[1];
ry(2.9861613310764175) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(2.921425182625515) q[0];
rx(-pi/2) q[0];
rz(1.8175622216177931) q[1];
rx(-pi) q[1];
rx(-pi/2) q[2];
ry(1.3304187738991728) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(0.7363478489747841) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(0.20461293783936266) q[1];
rx(-pi/2) q[2];
ry(1.3173934787861123) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];