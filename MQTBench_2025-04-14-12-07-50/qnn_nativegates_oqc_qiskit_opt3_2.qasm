// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;
qreg q[2];
creg meas[2];
rz(-1.354328565903852) q[0];
sx q[0];
rz(-1.5253883461834672) q[0];
sx q[0];
rz(-1.6238852685939502) q[0];
rz(2.379810523907919) q[1];
sx q[1];
rz(-2.4476833253441406) q[1];
sx q[1];
rz(0.9725899814565162) q[1];
ecr q[0],q[1];
sx q[0];
rz(0.22481543072671561) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-0.09480485695162999) q[1];
sx q[1];
rz(-1.847499917085428) q[1];
sx q[1];
rz(-1.2358353122918437) q[1];
ecr q[0],q[1];
sx q[0];
rz(-0.11321124216394907) q[0];
sx q[0];
rz(-0.7590702092666635) q[1];
sx q[1];
rz(-2.6905658417935303) q[1];
sx q[1];
rz(2.382522444323129) q[1];
ecr q[0],q[1];
rz(-1.8974260891132722) q[0];
sx q[0];
rz(-0.5397743848585854) q[0];
sx q[0];
rz(0.13063948961169203) q[0];
rz(2.163450718318023) q[1];
sx q[1];
rz(-2.679272298632129) q[1];
sx q[1];
rz(-0.5844571635408222) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];