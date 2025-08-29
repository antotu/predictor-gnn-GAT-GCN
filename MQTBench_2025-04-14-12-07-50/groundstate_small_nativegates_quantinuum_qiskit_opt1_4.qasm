// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(2.891555406052256) q[0];
ry(-pi/2) q[0];
rz(0.8155496961934192) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rz(2.359840297298173) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
rz(pi/2) q[2];
rz(1.8908827125524859) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
rz(1.6967731089403673) q[0];
ry(-pi/2) q[0];
rz(-pi/2) q[3];
rzz(pi/2) q[1],q[3];
rz(1.0318181292329207) q[1];
ry(pi/2) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rz(-pi/2) q[3];
rzz(pi/2) q[2],q[3];
rz(1.2295044028453814) q[2];
ry(pi/2) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(-pi/2) q[1];
rz(pi/2) q[2];
rz(1.6826103777568822) q[3];
ry(pi/2) q[3];
rzz(pi/2) q[0],q[3];
rz(0.26996149047979046) q[0];
ry(pi/2) q[0];
rz(-pi/2) q[3];
rzz(pi/2) q[1],q[3];
rz(-1.4177748261535261) q[1];
ry(pi/2) q[1];
rz(-pi/2) q[3];
rzz(pi/2) q[2],q[3];
rz(1.6243190473329587) q[2];
ry(pi/2) q[2];
rz(0.662606077497923) q[3];
ry(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];