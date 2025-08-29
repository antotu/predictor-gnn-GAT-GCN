// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rx(-pi) q[0];
rz(-pi) q[0];
rz(pi/2) q[1];
rx(-1.509397994717633) q[1];
rz(pi/2) q[2];
rx(-1.1068680921442111) q[2];
rz(-1.5707963267937997) q[3];
rx(-0.00019280331015991692) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(-pi) q[0];
rz(-3*pi/2) q[0];
rx(2.2527349168175492) q[1];
rz(pi) q[1];
rx(1.9349774894327196) q[2];
rx(0.00031627249219983887) q[3];
rz(-1.184830011879967e-12) q[3];
cz q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
cz q[1],q[2];
rx(pi/2) q[1];
cz q[0],q[1];
rx(3.141267783101563) q[0];
rz(pi/2) q[0];
rx(2.485368441762983) q[1];
rz(-pi/2) q[1];
rx(2.54216164788354) q[2];
rz(pi/2) q[2];
rx(3.1412274030340304) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];