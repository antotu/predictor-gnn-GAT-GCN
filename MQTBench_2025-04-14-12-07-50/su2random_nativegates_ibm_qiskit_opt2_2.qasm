// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
sx q[0];
rz(1.704757879308132) q[0];
sx q[0];
rz(0.8397366260192589) q[0];
sx q[1];
rz(-3.0112043102794672) q[1];
sx q[1];
rz(1.5632808991358411) q[1];
cx q[0],q[1];
sx q[0];
rz(-0.009380718364162988) q[0];
sx q[0];
rz(-1.8971269718342327) q[0];
sx q[1];
rz(-1.7291536732871133) q[1];
sx q[1];
rz(1.6369627429575297) q[1];
cx q[0],q[1];
sx q[0];
rz(-2.0790379300152217) q[0];
sx q[0];
rz(1.1646500873100196) q[0];
sx q[1];
rz(-2.5865372311326773) q[1];
sx q[1];
rz(2.848754411185012) q[1];
cx q[0],q[1];
sx q[0];
rz(-3.1167849646094092) q[0];
sx q[0];
rz(1.964255432968912) q[0];
sx q[1];
rz(0.0766062501667748) q[1];
sx q[1];
rz(0.7070221297771191) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];