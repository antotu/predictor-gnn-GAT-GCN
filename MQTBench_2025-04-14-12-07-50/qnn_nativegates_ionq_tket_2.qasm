// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(0.0017109476029395498*pi) q[0];
rz(1.0090665303546995*pi) q[1];
rx(3.1179779686652536*pi) q[0];
rx(3.4045165194267843*pi) q[1];
rz(3.491763318980027*pi) q[0];
rz(3.3632695861165045*pi) q[1];
rz(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(1.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(0.5727834783782341*pi) q[1];
rx(3.5*pi) q[0];
rx(1.0*pi) q[1];
rz(3.9904935452087775*pi) q[0];
rz(0.5*pi) q[1];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(3.995255344347955*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(0.7381749395039885*pi) q[1];
rz(1.7508099126214889*pi) q[0];
rx(3.5529868379655434*pi) q[1];
rx(3.5882414483065324*pi) q[0];
rz(0.9398421488344106*pi) q[1];
rz(0.10457256760007505*pi) q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
