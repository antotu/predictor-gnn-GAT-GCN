// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rz', 'sx', 'x', 'ecr', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
opaque ecr q0,q1;

qreg q[2];
creg meas[2];
rz(0.48162833243443104*pi) q[0];
rz(3.1854644374475596*pi) q[1];
sx q[0];
sx q[1];
rz(2.3724174724900244*pi) q[0];
rz(2.481741312706221*pi) q[1];
sx q[0];
sx q[1];
rz(0.46326847740591703*pi) q[0];
rz(3.5198210131393233*pi) q[1];
sx q[0];
sx q[1];
rz(1.5*pi) q[0];
sx q[1];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
rz(1.0*pi) q[0];
rz(0.8381417244470024*pi) q[1];
sx q[0];
x q[1];
rz(0.9341408123127124*pi) q[0];
rz(0.5*pi) q[1];
x q[0];
sx q[1];
rz(3.5*pi) q[0];
ecr q[0],q[1];
sx q[0];
rz(3.999468188910133*pi) q[1];
rz(0.5*pi) q[0];
sx q[1];
x q[0];
rz(3.5*pi) q[0];
ecr q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.9984413956769957*pi) q[0];
rz(2.0145730742148857*pi) q[1];
sx q[0];
sx q[1];
rz(2.4960675097315823*pi) q[0];
rz(2.543376503659848*pi) q[1];
sx q[0];
sx q[1];
rz(3.9960159651685485*pi) q[0];
rz(3.719880781398726*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
