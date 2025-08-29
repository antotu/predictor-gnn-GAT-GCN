// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rxx(-4.046053960963557) q[0],q[1];
rxx(-4.046053960963557) q[0],q[2];
rz(-2.023138853221711) q[0];
rxx(-4.046053960963557) q[1],q[3];
rz(-2.023138853221711) q[1];
rxx(2.0230423217586124) q[0],q[1];
rxx(-4.046053960963557) q[2],q[3];
rz(-2.023138853221711) q[2];
rxx(2.0230423217586124) q[0],q[2];
rz(0.9045689555305856) q[0];
ry(pi/2) q[0];
rz(-2.023138853221711) q[3];
rxx(2.0230423217586124) q[1],q[3];
rz(0.9045689555305856) q[1];
ry(pi/2) q[1];
rxx(2.0230423217586124) q[2],q[3];
rz(0.9045689555305856) q[2];
ry(pi/2) q[2];
rz(0.9045689555305856) q[3];
ry(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];