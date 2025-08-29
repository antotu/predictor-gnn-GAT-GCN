// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas99[3];
rx(-1.683931317092344) q[0];
rx(-1.6854427003471708) q[1];
rxx(1.6902870338033442) q[0],q[1];
rx(-1.6876788810836247) q[2];
rxx(1.6901114333029665) q[0],q[2];
rz(2.1024675586854666) q[0];
rx(2.02662831462173) q[0];
rxx(1.690501106820874) q[1],q[2];
rz(2.1024675586854658) q[1];
rx(2.028447279604083) q[1];
rxx(-2.03427748375083) q[0],q[1];
rz(2.1024675586854658) q[2];
rx(2.0311385456617352) q[2];
rxx(-2.0340661467785233) q[0],q[2];
rz(-2.165595877191869) q[0];
rx(-0.7250553122792834) q[0];
rxx(-2.034535122785343) q[1],q[2];
rz(-2.165595877191868) q[1];
rx(-0.7313454367104492) q[1];
rxx(7.034692049851362) q[0],q[1];
rz(-2.165595877191869) q[2];
rx(-0.7406520470873668) q[2];
rxx(7.033961229925957) q[0],q[2];
rz(-0.09090504501925967) q[0];
ry(pi/2) q[0];
rxx(7.035582985961257) q[1],q[2];
rz(-0.09090504501925967) q[1];
ry(pi/2) q[1];
rz(-0.09090504501925967) q[2];
ry(pi/2) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas99[0];
measure q[1] -> meas99[1];
measure q[2] -> meas99[2];