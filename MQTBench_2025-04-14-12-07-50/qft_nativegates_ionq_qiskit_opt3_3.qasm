// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
creg meas[3];
rz(-3*pi/4) q[1];
ry(-pi/2) q[1];
rz(-0.7600235635719614) q[2];
ry(1.7923272789645615) q[2];
rz(-2.914416142987001) q[2];
rxx(pi/2) q[1],q[2];
rz(-pi) q[1];
rx(-pi/2) q[1];
rz(-2.85666852696773) q[2];
ry(2.5935642459694797) q[2];
rz(-0.28492412662206235) q[2];
rxx(pi/2) q[1],q[2];
ry(pi/4) q[1];
rz(pi/2) q[1];
rz(-1.679099764709077) q[2];
ry(2.3532563477600994) q[2];
rz(-0.07650708490115399) q[2];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
rz(-pi/8) q[0];
rx(-pi) q[2];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
rz(pi/8) q[0];
rxx(pi/2) q[1],q[0];
rx(-pi/2) q[0];
rz(-pi/4) q[0];
rx(-pi) q[1];
rxx(pi/2) q[1],q[0];
rx(pi/2) q[0];
rz(-pi/4) q[0];
ry(-pi/2) q[1];
ry(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rx(-pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];