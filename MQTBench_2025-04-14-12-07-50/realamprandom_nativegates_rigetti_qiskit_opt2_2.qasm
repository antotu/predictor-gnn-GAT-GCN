// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-pi/2) q[0];
rx(4.846350532897925) q[0];
rz(pi/2) q[1];
rx(1.4404079834845702) q[1];
cz q[0],q[1];
rx(3.9813292796090525) q[0];
rx(1.5783117544539516) q[1];
rz(pi) q[1];
cz q[0],q[1];
rx(3.1322119352256292) q[0];
rx(1.4124389803026796) q[1];
cz q[0],q[1];
rx(1.2444656817555668) q[0];
rz(pi/2) q[0];
rx(0.06616641616263373) q[1];
rz(pi/2) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];