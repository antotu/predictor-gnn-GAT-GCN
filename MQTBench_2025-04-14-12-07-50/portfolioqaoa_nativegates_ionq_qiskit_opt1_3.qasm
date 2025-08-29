// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas88[3];
rx(-0.10610607231286498) q[0];
rx(-0.16895197806824172) q[1];
rxx(-6.134074040324375) q[0],q[1];
rx(-0.12239801393945575) q[2];
rxx(-6.133704247948174) q[0],q[2];
rz(-2.9039950411050857) q[0];
rx(-2.0522176371130074) q[0];
rxx(-6.13363906167568) q[1],q[2];
rz(-2.9039950411050857) q[1];
rx(-2.031338274665537) q[1];
rxx(2.0379299753603273) q[0],q[1];
rz(-2.9039950411050857) q[2];
rx(-2.0468049479313337) q[2];
rxx(2.037807118843897) q[0],q[2];
rz(0.21635837708017203) q[0];
rx(-0.4761525297529857) q[0];
rxx(2.037785461938906) q[1],q[2];
rz(0.21635837708017203) q[1];
rx(-0.5352335647814138) q[1];
rxx(-5.766603868420967) q[0],q[1];
rz(0.21635837708017203) q[2];
rx(-0.4914684801295837) q[2];
rxx(-5.766256228967467) q[0],q[2];
rz(1.9849058156124624) q[0];
ry(pi/2) q[0];
rxx(-5.766194947768599) q[1],q[2];
rz(1.9849058156124624) q[1];
ry(pi/2) q[1];
rz(1.9849058156124624) q[2];
ry(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas88[0];
measure q[1] -> meas88[1];
measure q[2] -> meas88[2];