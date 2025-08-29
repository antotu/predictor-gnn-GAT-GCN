// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
rxx(-4.3529874109264695) q[0],q[1];
rxx(-4.3529874109264695) q[0],q[2];
rz(-0.4980726280785692) q[0];
rxx(-4.3529874109264695) q[1],q[3];
rz(-0.4980726280785692) q[1];
rxx(-2.6435737880885037) q[0],q[1];
rxx(-4.3529874109264695) q[2],q[4];
rz(-0.4980726280785692) q[2];
rxx(-2.6435737880885037) q[0],q[2];
rz(-1.9301228025150685) q[0];
ry(pi/2) q[0];
rxx(-4.3529874109264695) q[3],q[4];
rz(-0.4980726280785692) q[3];
rxx(-2.6435737880885037) q[1],q[3];
rz(-1.9301228025150685) q[1];
ry(pi/2) q[1];
rz(-0.4980726280785692) q[4];
rxx(-2.6435737880885037) q[2],q[4];
rz(-1.9301228025150685) q[2];
ry(pi/2) q[2];
rxx(-2.6435737880885037) q[3],q[4];
rz(-1.9301228025150685) q[3];
ry(pi/2) q[3];
rz(-1.9301228025150685) q[4];
ry(pi/2) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];