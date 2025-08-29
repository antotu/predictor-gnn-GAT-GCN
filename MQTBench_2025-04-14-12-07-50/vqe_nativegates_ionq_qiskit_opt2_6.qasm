// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
ry(-0.9437872674532791) q[0];
ry(-pi/2) q[1];
ry(-1.5710794679480884) q[2];
ry(0.04002200329291425) q[3];
ry(1.1841430435141258) q[4];
ry(-1.5721485854060544) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(0.7600830239762284) q[0];
rx(-pi/2) q[0];
rz(-0.5529406754069246) q[1];
rx(-pi) q[1];
rz(3.1414318897168885) q[2];
rx(-pi) q[2];
rz(-1.4648435651194767) q[3];
rx(-pi) q[3];
rz(1.6689962377908971) q[4];
rx(-pi) q[4];
rx(-pi/2) q[5];
ry(-3.1403835910832463) q[5];
rxx(pi/2) q[4],q[5];
ry(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
ry(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
ry(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
ry(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rz(2.514718185144565) q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-2.3807524789143466) q[1];
rx(-pi/2) q[2];
ry(1.5706664700105748) q[2];
rx(-pi/2) q[3];
ry(1.5709676126676577) q[3];
rx(-pi/2) q[4];
ry(-0.38848711673812175) q[4];
rx(-pi/2) q[5];
ry(-1.5706757543107934) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];