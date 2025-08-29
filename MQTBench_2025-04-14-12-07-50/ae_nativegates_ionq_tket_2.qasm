// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg eval[1];
qreg q[1];
creg meas[2];
rz(3.0*pi) eval[0];
rz(3.5*pi) q[0];
rx(1.5*pi) eval[0];
rx(2.2951672353008665*pi) q[0];
rx(0.5*pi) eval[0];
rx(1.5*pi) q[0];
rz(0.5*pi) eval[0];
ry(0.5*pi) eval[0];
rxx(0.5*pi) eval[0],q[0];
ry(3.5*pi) eval[0];
rx(3.5*pi) q[0];
rz(3.5*pi) eval[0];
rx(1.5*pi) q[0];
rz(1.5*pi) eval[0];
rx(1.295167235300867*pi) eval[0];
ry(0.5*pi) eval[0];
rxx(0.5*pi) eval[0],q[0];
ry(3.5*pi) eval[0];
rx(3.5*pi) q[0];
rz(3.5*pi) eval[0];
rx(2.2951672353008665*pi) q[0];
rx(0.5*pi) eval[0];
rz(0.5*pi) q[0];
rz(1.0*pi) eval[0];
rx(3.5*pi) eval[0];
barrier eval[0],q[0];
measure eval[0] -> meas[0];
measure q[0] -> meas[1];
