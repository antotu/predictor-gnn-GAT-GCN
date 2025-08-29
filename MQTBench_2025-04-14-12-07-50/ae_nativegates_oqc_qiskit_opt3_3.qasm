// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg eval[2];
qreg q[1];
creg meas[3];
rz(-pi/2) eval[0];
sx eval[0];
rz(-2.166669914990358) eval[0];
rz(-pi/2) eval[1];
sx eval[1];
rz(-3.0592043565767817) eval[1];
rz(0.3217505543966417) q[0];
sx q[0];
rz(pi/2) q[0];
ecr eval[0],q[0];
rz(2.9847769682453915) q[0];
sx q[0];
rz(-2.2652945924214523) q[0];
sx q[0];
rz(-0.15681568534439982) q[0];
ecr eval[0],q[0];
x eval[0];
rz(0.18952457520198784) eval[0];
rz(2.5231819124498394) q[0];
sx q[0];
rz(-0.38178785422349115) q[0];
sx q[0];
rz(-2.5231819124498402) q[0];
ecr eval[1],q[0];
rz(2.908724475331711) q[0];
sx q[0];
rz(-1.9305033263798528) q[0];
sx q[0];
rz(-0.23286817825808193) q[0];
ecr eval[1],q[0];
rz(-1.653184623807907) eval[1];
sx eval[1];
rz(-pi/2) eval[1];
ecr eval[0],eval[1];
x eval[0];
rz(-pi/2) eval[0];
rz(-3*pi/4) eval[1];
sx eval[1];
rz(-pi) eval[1];
ecr eval[0],eval[1];
rz(pi/2) eval[0];
sx eval[0];
rz(-pi/2) eval[0];
rz(-pi/4) eval[1];
rz(1.2725245528241063) q[0];
sx q[0];
rz(-1.8792426553507084) q[0];
sx q[0];
rz(1.663860055519315) q[0];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];