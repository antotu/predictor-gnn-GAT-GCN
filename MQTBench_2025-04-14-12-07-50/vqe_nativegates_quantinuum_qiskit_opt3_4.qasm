// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-pi) q[0];
ry(-2.0482153420366953) q[0];
rz(-pi) q[1];
ry(-1.5710683519701034) q[1];
rz(-pi) q[2];
ry(-1.1385536114892625) q[2];
ry(-2.3848718585675486) q[3];
rz(-3*pi/2) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(1.2419243690913626) q[0];
rx(3.1415282145102523) q[1];
rz(-pi) q[1];
rz(-pi/2) q[2];
ry(-3.141464918429589) q[2];
ry(-1.9881824512741204) q[3];
rzz(pi/2) q[2],q[3];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(-0.7907845733996767) q[0];
rz(pi/2) q[1];
ry(-1.922769315954303) q[1];
rz(pi/2) q[2];
ry(1.5704142318633738) q[2];
rz(pi/2) q[3];
ry(-2.1622606243525677) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];