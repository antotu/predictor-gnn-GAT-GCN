// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-2.7887839640163374) q[0];
sx q[0];
rz(-1.7407989464420783) q[0];
sx q[0];
rz(-1.8363497134331688) q[0];
rz(-2.5898435222652454) q[1];
sx q[1];
rz(-1.3095811856917177) q[1];
sx q[1];
rz(-1.1301530426447846) q[1];
cx q[1],q[0];
rz(-0.22645160257029529) q[0];
sx q[1];
rz(-3.1460930602012884) q[1];
cx q[1],q[0];
rz(0.15779705478662076) q[0];
sx q[1];
cx q[1],q[0];
rz(0.35394514056515947) q[0];
sx q[0];
rz(-1.732101833831745) q[0];
sx q[0];
rz(-1.010476873521963) q[0];
rz(0.20768542545452862) q[1];
sx q[1];
rz(-1.1696531884612256) q[1];
sx q[1];
rz(-1.6775825481923317) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];