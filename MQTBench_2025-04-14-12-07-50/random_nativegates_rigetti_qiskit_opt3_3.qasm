// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-0.8540080589393342) q[0];
rx(0.08045377785829523) q[0];
rz(3.99399563564201) q[0];
rz(0.7521612713826333) q[1];
rx(pi/2) q[1];
rz(3.0222604666285307) q[2];
rx(pi/2) q[2];
cz q[1],q[2];
rx(-2.602636365482504) q[1];
rz(-pi/2) q[1];
rx(0.5389562881072882) q[2];
cz q[1],q[2];
rx(0.4843245216381542) q[1];
cz q[0],q[1];
rx(pi) q[0];
rx(pi/4) q[1];
rz(pi) q[1];
cz q[0],q[1];
rz(2.858988945817658) q[0];
rx(2.690505023966453) q[1];
rx(pi/2) q[2];
rz(-1.451464139833634) q[2];
cz q[1],q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rx(-pi/4) q[2];
cz q[0],q[2];
rx(pi/4) q[2];
cz q[1],q[2];
rz(3*pi/4) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(-pi/4) q[2];
cz q[0],q[2];
cz q[0],q[1];
rx(-pi/4) q[1];
cz q[0],q[1];
rx(2.0552546510347898) q[1];
rx(-3*pi/4) q[2];
cz q[1],q[2];
rz(1.9868730259343685) q[1];
rx(2.1059243285001448) q[1];
rz(-1.9012868858581284) q[1];
rz(-1.445003684657911) q[2];
rx(pi/2) q[2];
rz(-3.107488276014717) q[2];
cz q[0],q[2];
rx(pi) q[0];
rx(1.526335375060782) q[2];
rz(-0.6546790948422734) q[2];
cz q[0],q[2];
rz(1.2412178861486423) q[0];
rx(pi) q[0];
rx(3.085564819108484) q[2];
rz(0.4553710827832145) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];