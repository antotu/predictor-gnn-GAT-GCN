// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rzz(1.8522203143279934) q[0],q[2];
ry(pi/2) q[3];
rx(pi) q[3];
rzz(1.8522203143279934) q[0],q[3];
rx(11.92156292311561) q[0];
ry(pi/2) q[4];
rx(pi) q[4];
rzz(1.8522203143279934) q[1],q[4];
rzz(1.8522203143279934) q[2],q[4];
rx(11.92156292311561) q[2];
rzz(3.7863758484140755) q[0],q[2];
rx(11.92156292311561) q[4];
ry(pi/2) q[5];
rx(pi) q[5];
rzz(1.8522203143279934) q[1],q[5];
rx(11.92156292311561) q[1];
rzz(3.7863758484140755) q[1],q[4];
rzz(3.7863758484140755) q[2],q[4];
rx(-1.852235230937587) q[2];
rzz(1.8522203143279934) q[3],q[5];
rx(11.92156292311561) q[3];
rzz(3.7863758484140755) q[0],q[3];
rx(-1.852235230937587) q[0];
rx(-1.852235230937587) q[4];
rx(11.92156292311561) q[5];
rzz(3.7863758484140755) q[1],q[5];
rx(-1.852235230937587) q[1];
rzz(3.7863758484140755) q[3],q[5];
rx(-1.852235230937587) q[3];
rx(-1.852235230937587) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];