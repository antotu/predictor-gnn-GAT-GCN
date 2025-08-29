// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rxx(-1.5706839854919061) q[0],q[1];
rxx(-1.5706839854919061) q[0],q[2];
rz(2.3562679696220528) q[0];
rxx(-1.5706839854919061) q[1],q[3];
rz(2.3562679696220528) q[1];
rxx(0.7853901644282129) q[0],q[1];
rxx(-1.5706839854919061) q[2],q[3];
rz(2.3562679696220528) q[2];
rxx(0.7853901644282129) q[0],q[2];
rz(1.570708506737473) q[0];
ry(pi/2) q[0];
rz(2.3562679696220528) q[3];
rxx(0.7853901644282129) q[1],q[3];
rz(1.570708506737473) q[1];
ry(pi/2) q[1];
rxx(0.7853901644282129) q[2],q[3];
rz(1.570708506737473) q[2];
ry(pi/2) q[2];
rz(1.570708506737473) q[3];
ry(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];