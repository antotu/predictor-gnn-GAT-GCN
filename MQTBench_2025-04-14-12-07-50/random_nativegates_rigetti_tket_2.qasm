// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(1.4654149031875172*pi) q[0];
rz(3.5*pi) q[1];
rx(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[0];
rz(0.034585096812482785*pi) q[1];
rz(0.5*pi) q[0];
rx(1.5*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rz(1.5*pi) q[0];
rz(0.5*pi) q[1];
rx(1.38799753736862*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(1.998243150083456*pi) q[1];
rx(1.5*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(1.8687324743730755*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(1.4906595148108117*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
