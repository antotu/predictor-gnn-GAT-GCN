// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas110[3];
rx(0.18505645481228114) q[0];
rx(-0.3938581148345367) q[1];
rxx(-5.898555400428922) q[0],q[1];
rx(-0.38569807575758075) q[2];
rxx(-5.897635822231625) q[0],q[2];
rz(0.6730112114749498) q[0];
rx(0.2890393994612293) q[0];
rxx(-5.898178035754412) q[1],q[2];
rz(0.6730112114749494) q[1];
rx(0.2631700634488808) q[1];
rxx(-0.2635824345105717) q[0],q[1];
rz(0.6730112114749498) q[2];
rx(0.26353470238495824) q[2];
rxx(-0.26354134230349524) q[0],q[2];
rz(-0.5833666431179494) q[0];
rx(-0.08495836169004972) q[0];
rxx(-0.2635655716190918) q[1],q[2];
rz(-0.5833666431179485) q[1];
rx(0.48499732134822704) q[1];
rxx(5.807273384467762) q[0],q[1];
rz(-0.583366643117949) q[2];
rx(0.4769635614645137) q[2];
rxx(5.806368037034777) q[0],q[2];
rz(-1.9933386606076766) q[0];
ry(pi/2) q[0];
rxx(5.806901859631298) q[1],q[2];
rz(-1.9933386606076766) q[1];
ry(pi/2) q[1];
rz(-1.9933386606076766) q[2];
ry(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas110[0];
measure q[1] -> meas110[1];
measure q[2] -> meas110[2];