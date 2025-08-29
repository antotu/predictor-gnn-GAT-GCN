// Benchmark was created by MQT Bench on 2024-03-19
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
rx(2.543561663584252*pi) q[0];
rz(0.4430955715366851*pi) q[1];
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
rz(0.5056507068449694*pi) q[1];
rx(3.5*pi) q[0];
rx(1.0*pi) q[1];
ry(0.5*pi) q[0];
rz(0.5*pi) q[1];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(3.997842046810085*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(3.5*pi) q[1];
rz(0.4567501863085628*pi) q[0];
rx(0.44285958843656326*pi) q[1];
rx(3.5*pi) q[0];
rz(0.5*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
