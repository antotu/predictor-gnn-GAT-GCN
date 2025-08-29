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
sx q[0];
rz(1.704757879308132) q[0];
sx q[0];
rz(-0.7310597007756385) q[0];
rz(3.1340128873390656) q[1];
sx q[1];
rz(-1.7011809668384883) q[1];
sx q[1];
rz(-1.5698108209336015) q[1];
ecr q[0],q[1];
sx q[0];
rz(-3.1322119352256292) q[0];
sx q[0];
rz(-0.3263306450393362) q[0];
rz(-2.743799241916914) q[1];
sx q[1];
rz(-2.970074794095371) q[1];
sx q[1];
rz(-1.9633378896209148) q[1];
ecr q[0],q[1];
sx q[0];
rz(-1.0625547235745714) q[0];
sx q[0];
rz(2.735446414104917) q[0];
rz(-1.8216407732294213) q[1];
sx q[1];
rz(-1.723516029862731) q[1];
sx q[1];
rz(-2.1065593164176777) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.02480768898038299) q[0];
sx q[0];
rz(-1.1773372206208812) q[0];
sx q[1];
rz(0.0766062501667748) q[1];
sx q[1];
rz(0.7070221297771191) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];