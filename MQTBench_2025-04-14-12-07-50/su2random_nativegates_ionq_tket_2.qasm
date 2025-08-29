// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(2.9816283324344326*pi) q[0];
rz(3.68546443744756*pi) q[1];
rx(3.627582527509974*pi) q[0];
rx(3.5182586872937742*pi) q[1];
rz(0.036731522594085075*pi) q[0];
rz(0.9801789868606794*pi) q[1];
rz(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(1.5*pi) q[0];
rz(0.5*pi) q[0];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(0.8381417244470024*pi) q[1];
rx(3.5*pi) q[0];
rx(1.0*pi) q[1];
rz(3.9341408123127124*pi) q[0];
rz(0.5*pi) q[1];
ry(0.5*pi) q[0];
rxx(0.5*pi) q[0],q[1];
ry(3.5*pi) q[0];
rx(3.5*pi) q[1];
rz(3.5*pi) q[0];
rz(3.999468188910133*pi) q[1];
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
rz(0.48542692578511426*pi) q[1];
rz(1.5015586043230034*pi) q[0];
rx(3.45662349634015*pi) q[1];
rx(3.5039324902684172*pi) q[0];
rz(2.219880781398726*pi) q[1];
rz(0.4960159651685476*pi) q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
