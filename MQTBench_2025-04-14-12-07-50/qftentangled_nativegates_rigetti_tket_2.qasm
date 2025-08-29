// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(3.5*pi) q[0];
rz(3.5*pi) q[1];
rx(1.5*pi) q[0];
rx(3.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(1.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz q[1],q[0];
rz(0.5*pi) q[0];
rz(1.5*pi) q[1];
rx(0.5*pi) q[0];
rx(1.5*pi) q[1];
rz(0.5*pi) q[0];
rz(1.75*pi) q[0];
rx(1.5*pi) q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz q[1],q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[0];
rz(3.5*pi) q[1];
rz(0.5*pi) q[0];
rx(0.25*pi) q[1];
rx(0.5*pi) q[0];
rz(0.75*pi) q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
