// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-3.1387495026563905) q[0];
ry(3.1415787821197245) q[1];
rxx(pi/2) q[0],q[1];
rz(-3.134219218371337) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(3.1261856283117555) q[1];
rxx(pi/2) q[0],q[1];
rz(-1.56795103647978) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-3.141576789214754) q[1];
rxx(pi/2) q[0],q[1];
rz(1.5627607208188046) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-3.1415754205008772) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];