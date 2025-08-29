// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(0.13396155251323524) q[0];
rx(-1.5783117544539529) q[0];
ry(0.13038834331032634) q[1];
rz(3.1322119352256292) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
ry(3.9813292796090525) q[2];
rz(1.4124389803026796) q[2];
rxx(pi/2) q[0],q[2];
rz(1.2444656817555675) q[0];
rx(-1.0157409043377803) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(1.6369627429575306) q[1];
ry(pi/2) q[1];
rz(-0.40614623948487605) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(1.0625547235745711) q[2];
rz(5.990347064774806) q[2];
rxx(pi/2) q[0],q[2];
rz(0.024807688980384768) q[0];
rx(2.2778184565720165) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(0.07660625016677525) q[1];
ry(pi/2) q[1];
rz(-0.17746657451846914) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
ry(5.105848086558706) q[2];
rz(1.8339114230470697) q[2];
rxx(pi/2) q[0],q[2];
rz(2.6249522282931705) q[0];
ry(pi/2) q[0];
rz(2.4640770810058337) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rz(1.3482194095209188) q[1];
ry(pi/2) q[1];
rz(-2.3666198022580387) q[1];
rx(-pi/2) q[2];
ry(3.408906801581391) q[2];
rz(4.2357064252607195) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];