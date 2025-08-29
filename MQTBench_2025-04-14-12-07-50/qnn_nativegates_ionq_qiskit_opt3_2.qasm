// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-0.08447100023930965) q[0];
ry(2.3205312617161984) q[0];
rz(-1.861130865532287) q[0];
rz(-1.7122565189355647) q[1];
ry(1.3963787849401528) q[1];
rz(-1.339161903603397) q[1];
rxx(pi/2) q[0],q[1];
rz(1.739261235215162) q[0];
ry(1.556538964049995) q[0];
rz(-1.402331418374631) q[0];
rz(0.438988142293101) q[1];
ry(1.9726871051196646) q[1];
rz(-0.6945769600458513) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.009846564079614595) q[0];
ry(3.121900480033129) q[0];
rz(-3.1317460895102682) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rz(0.2969019244372886) q[0];
ry(1.1089069924958113) q[0];
rz(2.683918436118124) q[0];
rz(1.6631086537041568) q[1];
ry(1.6595087533894617) q[1];
rz(-0.3256336206012387) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];