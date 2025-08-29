// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-pi/2) q[0];
rx(4.381758811338389) q[0];
rz(-pi/2) q[1];
rx(6.372120360210389) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(-1.3615026891706188) q[2];
cz q[0],q[2];
cz q[1],q[2];
rz(-pi/2) q[3];
rx(-5.639481980923147) q[3];
cz q[0],q[3];
rx(-1.9495245520350186) q[0];
cz q[1],q[3];
rx(-2.9042551918428554) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(2.558813412309493) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(-3.182436776039107) q[3];
cz q[0],q[3];
rx(-2.544536072805355) q[0];
cz q[1],q[3];
rx(3.285926626955699) q[1];
cz q[0],q[1];
cz q[2],q[3];
rx(2.534967425976084) q[2];
cz q[0],q[2];
cz q[1],q[2];
rx(0.02489633645228656) q[3];
cz q[0],q[3];
rx(-1.734380067031115) q[0];
rz(pi/2) q[0];
cz q[1],q[3];
rx(-0.5587550334103724) q[1];
rz(pi/2) q[1];
cz q[2],q[3];
rx(-6.33085488694035) q[2];
rz(pi/2) q[2];
rx(-1.0288026830159278) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];