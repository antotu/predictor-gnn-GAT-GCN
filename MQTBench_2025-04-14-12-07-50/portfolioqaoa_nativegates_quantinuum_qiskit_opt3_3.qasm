// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas275[3];
ry(-pi/2) q[0];
rz(0.4444378597481524) q[0];
ry(-pi/2) q[1];
rz(0.4423978522568648) q[1];
rzz(2.688478381701013) q[0],q[1];
ry(-pi/2) q[2];
rz(0.44391997384395143) q[2];
rzz(2.68826289627274) q[0],q[2];
rx(8.97870067957758) q[0];
rz(-1.488449179198119) q[0];
rzz(2.6884166366919144) q[1],q[2];
rx(8.97870067957758) q[1];
rz(-1.4895749757163232) q[1];
rzz(1.4836610229682323) q[0],q[1];
rx(8.97870067957758) q[2];
rz(-1.4887349792014364) q[2];
rzz(1.4835421053927285) q[0],q[2];
rx(2.121839423027897) q[0];
rz(-5.36416352365047) q[0];
rzz(1.4836269484285276) q[1],q[2];
rx(2.121839423027897) q[1];
rz(-5.368220737495862) q[1];
rzz(5.346907675514806) q[0],q[1];
rx(2.121839423027897) q[2];
rz(-5.365193507054862) q[2];
rzz(5.346479113136088) q[0],q[2];
rx(-5.630924969517621) q[0];
rzz(5.346784875619772) q[1],q[2];
rx(-5.630924969517621) q[1];
rx(-5.630924969517621) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas275[0];
measure q[1] -> meas275[1];
measure q[2] -> meas275[2];