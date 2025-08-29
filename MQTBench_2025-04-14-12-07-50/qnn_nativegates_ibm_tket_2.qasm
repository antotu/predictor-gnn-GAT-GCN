// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(0.559868638254984*pi) q[0];
rz(2.5694447813058408*pi) q[1];
sx q[0];
sx q[1];
rz(2.949816078289614*pi) q[0];
rz(2.524641164230437*pi) q[1];
sx q[0];
sx q[1];
rz(0.02469420177754378*pi) q[0];
rz(1.1272624191331557*pi) q[1];
sx q[0];
sx q[1];
rz(1.5*pi) q[0];
cx q[0],q[1];
rz(1.0*pi) q[0];
rz(0.5704204944189665*pi) q[1];
sx q[0];
x q[1];
rz(0.9825094069035298*pi) q[0];
rz(0.5*pi) q[1];
cx q[0],q[1];
sx q[0];
rz(3.958477915066277*pi) q[1];
rz(0.5*pi) q[0];
cx q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.9524497842508728*pi) q[0];
rz(1.7123852718898718*pi) q[1];
sx q[0];
sx q[1];
rz(2.5125782047274394*pi) q[0];
rz(2.445660564336819*pi) q[1];
sx q[0];
sx q[1];
rz(3.6233463812281093*pi) q[0];
rz(0.46348967160782617*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
