// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-1.4368347742816612) q[0];
rz(-0.007515427659054552) q[0];
ry(1.7011846701052231) q[1];
rx(-0.009380718364162988) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[1];
ry(-pi/2) q[1];
ry(-0.7310597007756375) q[2];
rx(-1.7291536732871142) q[2];
rzz(pi/2) q[0],q[2];
rx(1.2444656817555668) q[0];
rz(-2.5865372311326755) q[0];
rz(0.3323300199790591) q[2];
rzz(pi/2) q[1],q[2];
rx(0.06616641616263408) q[1];
ry(-1.1646500873100203) q[1];
rzz(pi/2) q[0],q[1];
ry(-pi/2) q[1];
ry(1.0861168840058397) q[2];
rz(1.6551843708733451) q[2];
rzz(pi/2) q[0],q[2];
rx(0.024807688980384532) q[0];
rz(0.7070221297771075) q[0];
rzz(pi/2) q[1],q[2];
rx(-1.4941900766281222) q[1];
ry(-1.393329752276428) q[1];
rzz(pi/2) q[0],q[1];
ry(-pi/2) q[1];
ry(1.6706769312310812) q[2];
rz(-1.9520078750646572) q[2];
rzz(pi/2) q[0],q[2];
rx(-0.5166404252966226) q[0];
rz(2.4640770810058337) q[0];
rzz(pi/2) q[1],q[2];
rx(-1.7933732440688743) q[1];
rz(-2.3666198022580387) q[1];
rx(-1.3034821788032989) q[2];
rz(-0.4766825551239702) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];