// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(pi/2) q[0];
rx(1.4368347742816614) q[0];
rz(0.8397366260192589) q[0];
rz(-0.0074516351456050955) q[1];
rx(1.5717734676382622) q[1];
rz(4.777432794561202) q[1];
cz q[0],q[1];
rx(3.1322119352256292) q[0];
rz(1.2444656817555666) q[0];
rx(1.560369549340169) q[1];
rz(0.36165726872490644) q[1];
cz q[0],q[1];
rx(1.062554723574571) q[0];
rz(-1.9769425662797726) q[0];
rx(0.6203227775090691) q[1];
rz(-3.577290949195727) q[1];
cz q[0],q[1];
rx(0.024807688980383984) q[0];
rz(0.39345910617401714) q[0];
rx(1.4941900766281218) q[1];
rz(2.2778184565720165) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];