// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-2.0463666837149765) q[0];
rz(-5*pi/2) q[0];
ry(-0.913628447864354) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[1];
ry(1.8086810473412902) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(1.0941774997651166) q[3];
rzz(pi/2) q[0],q[3];
ry(-1.9264377611178016) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(1.650849503018308) q[1];
rzz(pi/2) q[0],q[1];
rz(-3*pi/2) q[0];
rz(pi/2) q[1];
rzz(pi/2) q[2],q[3];
ry(-0.6203076937571614) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(-1.9747490839629747) q[3];
rzz(pi/2) q[0],q[3];
ry(1.4690035729402553) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(0.25454162105500605) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rzz(pi/2) q[2],q[3];
ry(2.749436801487799) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[2];
rzz(pi/2) q[1],q[2];
ry(1.1072809957468528) q[3];
rzz(pi/2) q[0],q[3];
ry(-1.6095597764232703) q[0];
rz(-3*pi/2) q[3];
rzz(pi/2) q[1],q[3];
ry(0.42784326034983083) q[1];
rzz(pi/2) q[2],q[3];
ry(-2.993410086632737) q[2];
ry(0.8099445541674511) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];