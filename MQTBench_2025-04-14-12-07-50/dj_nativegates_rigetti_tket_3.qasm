// Benchmark was created by MQT Bench on 2024-03-17
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(3.5*pi) q[2];
rz(1.5*pi) q[0];
rz(1.5*pi) q[1];
rx(2.5*pi) q[2];
rx(1.5*pi) q[0];
rx(1.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[0],q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(1.0*pi) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
