// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(3.5*pi) q[0];
rx(0.5*pi) q[1];
rx(1.042663727862547*pi) q[0];
rz(0.6162350690042093*pi) q[1];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(1.0*pi) q[0];
rx(1.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(0.762889357517155*pi) q[1];
rx(3.5*pi) q[0];
rx(1.0*pi) q[1];
ry(0.5*pi) q[0];
rz(0.5*pi) q[1];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(0.0029858910663287078*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(0.5*pi) q[1];
rz(1.048469707346095*pi) q[0];
rx(0.023453764576383394*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
