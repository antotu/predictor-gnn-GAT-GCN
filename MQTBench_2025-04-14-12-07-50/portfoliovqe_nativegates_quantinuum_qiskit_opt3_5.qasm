// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(-0.654843510165677) q[0];
rz(-3*pi) q[0];
ry(1.5899837830425767) q[1];
rzz(pi/2) q[0],q[1];
ry(2.3255422902811786) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
ry(1.3117549023733406) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(-1.8775752280333) q[4];
rzz(pi/2) q[0],q[4];
ry(-0.6276272368296718) q[0];
rzz(pi/2) q[1],q[4];
ry(1.7583259484242528) q[1];
rzz(pi/2) q[0],q[1];
rzz(pi/2) q[2],q[4];
ry(0.14327895535633586) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
rzz(pi/2) q[3],q[4];
ry(2.5512470892247245) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(2.7747363701507006) q[4];
rzz(pi/2) q[0],q[4];
ry(2.885357966315442) q[0];
rzz(pi/2) q[1],q[4];
ry(0.9534814159839077) q[1];
rzz(pi/2) q[0],q[1];
rz(-pi) q[0];
rzz(pi/2) q[2],q[4];
ry(-0.27292437152753296) q[2];
rzz(pi/2) q[0],q[2];
rzz(pi/2) q[1],q[2];
rzz(pi/2) q[3],q[4];
ry(0.2217963951543746) q[3];
rzz(pi/2) q[0],q[3];
rzz(pi/2) q[1],q[3];
rzz(pi/2) q[2],q[3];
ry(-0.600950273907083) q[4];
rzz(pi/2) q[0],q[4];
ry(-1.1383309138837243) q[0];
rzz(pi/2) q[1],q[4];
ry(-1.7029348660581531) q[1];
rzz(pi/2) q[2],q[4];
ry(-2.225064609927739) q[2];
rzz(pi/2) q[3],q[4];
ry(-1.0862053357447146) q[3];
ry(0.5407331186778572) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];