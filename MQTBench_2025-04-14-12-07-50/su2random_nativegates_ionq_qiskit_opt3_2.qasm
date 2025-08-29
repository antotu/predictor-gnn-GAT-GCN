// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-1.8411982121333423) q[0];
ry(2.745625281115197) q[0];
rz(1.2923513115767333) q[0];
rz(-1.775471293916993) q[1];
ry(1.5741883664875118) q[1];
rz(3.057022630070378) q[1];
rxx(pi/2) q[0],q[1];
rz(2.2640384328557897) q[0];
ry(1.3113252527874255) q[0];
rz(-0.8775542207340039) q[0];
rz(0.43258625638618176) q[1];
ry(1.9677612845569004) q[1];
rz(-0.6970666126118252) q[1];
rxx(pi/2) q[0],q[1];
rz(-0.0005906936738280244) q[0];
ry(3.1404112664497483) q[0];
rz(-3.141001959917472) q[0];
rz(0.6154797086703869) q[1];
ry(2*pi/3) q[1];
rz(2.5261129449194053) q[1];
rxx(pi/2) q[0],q[1];
rz(0.005273921313980523) q[0];
ry(1.582994274240231) q[0];
rz(0.7729443616368918) q[0];
rz(1.3872671289239324) q[1];
ry(2.3019857854494226) q[1];
rz(0.5674573848841225) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];