// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas242[3];
ry(pi/2) q[0];
rx(pi) q[0];
rz(1.3223631613598241) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
rz(1.3148300048587052) q[1];
rzz(-1.3236089382832346) q[0],q[1];
ry(pi/2) q[2];
rx(pi) q[2];
rz(1.3368650168370901) q[2];
rzz(-1.323265246340888) q[0],q[2];
rx(8.856140495216636) q[0];
rz(4.139110573177156) q[0];
rzz(-1.3236419533791854) q[1],q[2];
rx(8.856140495216636) q[1];
rz(4.115531144594833) q[1];
rzz(-4.143009962230165) q[0],q[1];
rx(8.856140495216636) q[2];
rz(4.184502629679179) q[2];
rzz(-4.141934176852857) q[0],q[2];
rx(1.0920558779356515) q[0];
rz(4.85416648256483) q[0];
rzz(-4.143113302323656) q[1],q[2];
rx(1.0920558779356515) q[1];
rz(4.826513567795151) q[1];
rzz(-4.858739514212318) q[0],q[1];
rx(1.0920558779356515) q[2];
rz(4.907400286144442) q[2];
rzz(-4.857477880528308) q[0],q[2];
rx(7.497188917424333) q[0];
rzz(-4.858860706920091) q[1],q[2];
rx(7.497188917424333) q[1];
rx(7.497188917424333) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas242[0];
measure q[1] -> meas242[1];
measure q[2] -> meas242[2];