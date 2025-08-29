// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[2];
creg meas[2];
rz(-0.01252273167891138) q[0];
sx q[0];
rz(-1.46458264452232) q[0];
sx q[0];
rz(0.4032150853034029) q[0];
rz(-1.3131947873033598) q[1];
sx q[1];
rz(-1.5299754840591238) q[1];
sx q[1];
rz(-0.07416389109234878) q[1];
ecr q[0],q[1];
sx q[0];
rz(1.0623035573948885) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-0.03646242575222702) q[1];
sx q[1];
rz(-1.6797264654661204) q[1];
sx q[1];
rz(-1.24705765818549) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.0016707338130235172) q[0];
sx q[0];
rz(-0.7590702092666635) q[1];
sx q[1];
rz(-2.6905658417935303) q[1];
sx q[1];
rz(2.382522444323129) q[1];
ecr q[0],q[1];
rz(-2.7642639728625413) q[0];
sx q[0];
rz(-0.01328919818483243) q[0];
sx q[0];
rz(0.3648427129858032) q[0];
rz(-1.2062356125615583) q[1];
sx q[1];
rz(-2.7506888881543254) q[1];
sx q[1];
rz(0.3515809089757824) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];