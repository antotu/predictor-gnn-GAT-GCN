// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
ry(-1.1717872186226073) q[0];
rz(-3*pi/2) q[0];
ry(-2.520851446672924) q[1];
rz(-3*pi/2) q[1];
rzz(pi/2) q[0],q[1];
ry(-2.6335213301177243) q[0];
ry(-0.34901568623424517) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi/2) q[0];
ry(-0.757677548924941) q[0];
rz(-pi/2) q[1];
ry(-1.7593183681609068) q[1];
rzz(pi/2) q[0],q[1];
rz(pi/2) q[0];
ry(-0.053193190988900844) q[0];
rz(pi/2) q[1];
ry(0.947607887563714) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];