// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-2.968851299461949) q[0];
sx q[0];
rz(pi/2) q[0];
rz(1.6972163087763406) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
sx q[1];
rz(pi/2) q[1];
rz(0.4714314713447676) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(pi/2) q[2];
sx q[2];
rz(pi/2) q[2];
rz(-0.9035809013316625) q[3];
cx q[0],q[3];
rz(-0.9288030657453352) q[0];
sx q[0];
rz(pi/2) q[0];
cx q[1],q[3];
rz(1.456394824161058) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
sx q[1];
rz(pi/2) q[1];
cx q[2],q[3];
rz(0.9084203442276308) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(pi/2) q[2];
sx q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
sx q[3];
rz(1.7252703381607875) q[3];
cx q[0],q[3];
rz(0.31617598927785195) q[0];
sx q[0];
rz(pi/2) q[0];
cx q[1],q[3];
rz(2.0348449211621773) q[1];
sx q[1];
rz(pi/2) q[1];
cx q[2],q[3];
rz(-2.3437817785892414) q[2];
sx q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
sx q[3];
rz(-1.8717857928869837) q[3];
sx q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];