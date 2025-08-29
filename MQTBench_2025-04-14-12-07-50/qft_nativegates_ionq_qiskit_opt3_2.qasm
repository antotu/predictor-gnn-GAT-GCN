// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
creg meas[2];
rz(-2.715716241967523) q[0];
rx(3*pi/4) q[0];
ry(pi/4) q[1];
rz(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(2.526112944919406) q[0];
ry(pi/3) q[0];
rz(-0.6154797086703874) q[0];
rz(0.6154797086703874) q[1];
ry(2*pi/3) q[1];
rz(-0.6154797086703878) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.28492412662206323) q[0];
ry(2.593564245969482) q[0];
rz(-2.8566685269677325) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/4) q[0];
rz(pi/4) q[0];
rx(2.7157162419675247) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];