// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(-pi/2) q[0];
rx(1.542538654367922) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[1];
rx(2.584436894468611) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(2.7139795294375255) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(-5.021959921071141) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(5.331051183606485) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(4.450002433385686) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(3.0312578533879964) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(0.5107837252457457) q[1];
rz(pi/2) q[1];
cz q[0],q[1];
rz(-pi/2) q[2];
rx(1.4205501683387225) q[2];
rz(pi/2) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(6.311677876776322) q[0];
rz(pi/2) q[0];
cz q[1],q[2];
rz(-pi/2) q[1];
rx(5.00772014466694) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[2];
rx(-4.700590475057184) q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];