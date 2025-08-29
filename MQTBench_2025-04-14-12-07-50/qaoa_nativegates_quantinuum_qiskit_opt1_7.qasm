// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg meas[7];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(4.630361302627637) q[1],q[2];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(4.630361302627637) q[0],q[3];
ry(pi/2) q[4];
rx(pi) q[4];
rzz(4.630361302627637) q[1],q[4];
rx(-8.63614527005007) q[1];
rzz(4.630361302627637) q[2],q[4];
rx(-8.63614527005007) q[2];
rzz(-0.7887391686374383) q[1],q[2];
rx(-8.63614527005007) q[4];
rzz(-0.7887391686374383) q[1],q[4];
rx(-10.91388787579045) q[1];
rzz(-0.7887391686374383) q[2],q[4];
rx(-10.91388787579045) q[2];
rx(-10.91388787579045) q[4];
ry(pi/2) q[5];
rx(pi) q[5];
rzz(4.630361302627637) q[0],q[5];
rx(-8.63614527005007) q[0];
ry(pi/2) q[6];
rx(pi) q[6];
rzz(4.630361302627637) q[3],q[6];
rx(-8.63614527005007) q[3];
rzz(-0.7887391686374383) q[0],q[3];
rzz(4.630361302627637) q[5],q[6];
rx(-8.63614527005007) q[5];
rzz(-0.7887391686374383) q[0],q[5];
rx(-10.91388787579045) q[0];
rx(-8.63614527005007) q[6];
rzz(-0.7887391686374383) q[3],q[6];
rx(-10.91388787579045) q[3];
rzz(-0.7887391686374383) q[5],q[6];
rx(-10.91388787579045) q[5];
rx(-10.91388787579045) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];