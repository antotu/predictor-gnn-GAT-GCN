// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[3];
creg meas[3];
sx q[0];
rz(3.057307623573444) q[0];
sx q[0];
rz(pi/2) q[0];
sx q[1];
rz(-1.4572099497865842) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi) q[2];
sx q[2];
rz(-0.5895098850676987) q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(-2.503449060252253) q[0];
sx q[0];
rz(-pi/2) q[0];
sx q[1];
rz(-2.923254216839454) q[1];
sx q[1];
rz(pi/2) q[1];
rz(-pi) q[2];
sx q[2];
rz(-2.974357946976311) q[2];
ecr q[1],q[2];
sx q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.7983326770473802) q[0];
sx q[0];
rz(-pi) q[1];
sx q[1];
rz(1.4994839651876033) q[1];
sx q[1];
rz(-pi) q[2];
sx q[2];
rz(0.5932216838174975) q[2];
sx q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];