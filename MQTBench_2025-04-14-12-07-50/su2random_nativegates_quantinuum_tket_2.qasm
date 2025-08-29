// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(3.9816283324344335*pi) q[0];
rz(0.6854644374475596*pi) q[1];
rx(3.3724174724900244*pi) q[0];
rx(3.481741312706226*pi) q[1];
rz(3.963268477405917*pi) q[0];
rz(3.0198210131393215*pi) q[1];
rz(3.5*pi) q[0];
rz(3.5*pi) q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.4341408123127117*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.33814172444700263*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rzz(3.999468188910133*pi) q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.49844139567699663*pi) q[0];
rz(1.5145730742148857*pi) q[1];
rx(3.4960675097315823*pi) q[0];
rx(3.5433765036598484*pi) q[1];
rz(3.4960159651685476*pi) q[0];
rz(3.2198807813987265*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
