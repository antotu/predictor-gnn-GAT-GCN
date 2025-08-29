// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-1.6794486128646735) q[0];
rx(-pi/4) q[0];
rz(-0.7824410255751673) q[1];
ry(1.6475493564202428) q[1];
rz(0.07698011106238889) q[1];
rxx(pi/2) q[0],q[1];
rz(1.574699056147173) q[0];
ry(1.5707887111273644) q[0];
rz(1.574699056147173) q[0];
rz(-2.6830399536499066) q[1];
ry(2.3081415827951033) q[1];
rz(-0.4585526999398857) q[1];
rxx(pi/2) q[0],q[1];
rx(-3*pi/4) q[0];
rz(2.72920355942533) q[0];
rx(-3*pi/4) q[1];
rz(3.112248653938482) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];