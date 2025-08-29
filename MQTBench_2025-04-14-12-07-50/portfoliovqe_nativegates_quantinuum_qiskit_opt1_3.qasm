// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(-0.4234928377881689) q[0];
rz(-pi) q[0];
ry(-2.672452411360273) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
ry(-1.873250794703852) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
ry(2.415928842066801) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(pi/2) q[1];
ry(3.008731461540701) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rz(-pi/2) q[2];
ry(-2.660318510387575) q[2];
rzz(pi/2) q[0],q[2];
rz(-pi/2) q[0];
ry(-1.9113763831468455) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(pi/2) q[1];
ry(2.5881623854561737) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
rz(pi/2) q[1];
rz(-pi/2) q[2];
ry(1.9871675391977799) q[2];
rzz(pi/2) q[0],q[2];
rz(pi/2) q[0];
ry(1.151593953366482) q[0];
rz(-pi/2) q[2];
rzz(pi/2) q[1],q[2];
rz(pi/2) q[1];
ry(3.031747552789602) q[1];
rz(-pi/2) q[2];
ry(-0.614590204188071) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];