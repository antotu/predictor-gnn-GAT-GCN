// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(-pi) q[0];
sx q[0];
rz(8.489851992798947e-05) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.6987222511940159) q[1];
sx q[1];
sx q[2];
rz(1.4758506495448653) q[2];
sx q[2];
rz(-pi) q[2];
rz(-pi) q[3];
sx q[3];
rz(2.4421726526371517) q[3];
sx q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
sx q[0];
rz(0.00022854756350731975) q[0];
sx q[0];
sx q[1];
rz(1.6530658468378974) q[1];
sx q[1];
rz(-pi) q[1];
rz(-pi) q[2];
sx q[2];
rz(1.5707389379552668) q[2];
sx q[2];
rz(-pi) q[3];
sx q[3];
rz(1.4912897028271432) q[3];
sx q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(-pi) q[0];
x q[0];
sx q[1];
rz(0.8712095999954297) q[1];
sx q[1];
rz(-pi) q[1];
sx q[2];
rz(0.09826076681709983) q[2];
sx q[2];
rz(-pi) q[2];
sx q[3];
rz(3.01818460457818) q[3];
sx q[3];
rz(-pi) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];