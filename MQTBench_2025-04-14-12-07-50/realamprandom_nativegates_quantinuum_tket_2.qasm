// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(3.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.042663727862545194*pi) q[0];
rz(0.6162350690042093*pi) q[1];
rz(0.5*pi) q[0];
rz(3.5*pi) q[1];
rz(3.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
rzz(0.5*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.2628893575171558*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rzz(3.997014108933671*pi) q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(2.0484697073460945*pi) q[0];
rz(3.5*pi) q[1];
rx(0.5*pi) q[0];
rx(1.023453764576384*pi) q[1];
rz(0.5*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
