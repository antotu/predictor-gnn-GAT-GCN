// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg meas[8];
rxx(-1.8520710923937687) q[0],q[2];
rxx(-1.8520710923937687) q[2],q[3];
rz(0.6446587055146331) q[2];
rxx(-1.8520710923937687) q[1],q[5];
rxx(-1.8520710923937687) q[4],q[5];
rz(0.6446587055146331) q[5];
rxx(-1.8520710923937687) q[0],q[6];
rz(0.6446587055146331) q[0];
rxx(-3.7863122962549953) q[0],q[2];
rxx(-1.8520710923937687) q[4],q[6];
rz(0.6446587055146331) q[4];
rz(0.6446587055146331) q[6];
rxx(-3.7863122962549953) q[0],q[6];
rz(-1.289327014800275) q[0];
ry(pi/2) q[0];
rxx(-1.8520710923937687) q[1],q[7];
rz(0.6446587055146331) q[1];
rxx(-3.7863122962549953) q[1],q[5];
rxx(-1.8520710923937687) q[3],q[7];
rz(0.6446587055146331) q[3];
rxx(-3.7863122962549953) q[2],q[3];
rz(-1.289327014800275) q[2];
ry(pi/2) q[2];
rxx(-3.7863122962549953) q[4],q[5];
rxx(-3.7863122962549953) q[4],q[6];
rz(-1.289327014800275) q[4];
ry(pi/2) q[4];
rz(-1.289327014800275) q[5];
ry(pi/2) q[5];
rz(-1.289327014800275) q[6];
ry(pi/2) q[6];
rz(0.6446587055146331) q[7];
rxx(-3.7863122962549953) q[1],q[7];
rz(-1.289327014800275) q[1];
ry(pi/2) q[1];
rxx(-3.7863122962549953) q[3],q[7];
rz(-1.289327014800275) q[3];
ry(pi/2) q[3];
rz(-1.289327014800275) q[7];
ry(pi/2) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];