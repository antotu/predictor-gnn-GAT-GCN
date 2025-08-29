// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-2.767101644379903) q[0];
rx(1.9616234273145843) q[0];
rz(0.2199949962964327) q[0];
rz(1.6589283812308357) q[1];
rx(1.9607676437707924) q[1];
rz(-0.15819462159249453) q[1];
cz q[0],q[1];
rx(0.2160900206388606) q[0];
rx(pi/2) q[1];
rz(0.056959556118792776) q[1];
cz q[0],q[1];
rx(-0.15794998799299972) q[0];
rz(3.116355754821254) q[0];
rx(pi/2) q[1];
cz q[0],q[1];
rx(0.5309099047869379) q[0];
rz(1.8335417237119191) q[0];
rz(2.0833213513413806) q[1];
rx(1.570480766607746) q[1];
rz(2.9690940966345085) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];