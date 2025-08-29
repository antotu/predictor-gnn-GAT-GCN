// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(1.9816283324344321*pi) q[0];
rz(2.68546443744756*pi) q[1];
rx(3.3724174724900244*pi) q[0];
rx(3.4817413127062258*pi) q[1];
rz(3.9632684774059164*pi) q[0];
rz(3.019821013139321*pi) q[1];
rz(1.0*pi) q[0];
rx(0.5*pi) q[1];
rx(1.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rx(3.5*pi) q[0];
rz(0.5*pi) q[1];
rz(3.9341408123127137*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(0.8381417244470029*pi) q[1];
rx(1.0*pi) q[1];
rz(0.5*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(3.999468188910133*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rz(1.0*pi) q[0];
rz(0.5*pi) q[1];
rz(1.0*pi) q[0];
rx(0.5*pi) q[1];
rz(0.49844139567699663*pi) q[0];
rz(0.5*pi) q[1];
rx(3.4960675097315828*pi) q[0];
rz(1.0*pi) q[1];
rz(3.4960159651685476*pi) q[0];
rz(1.0*pi) q[1];
rz(1.5145730742148857*pi) q[1];
rx(3.543376503659851*pi) q[1];
rz(3.2198807813987256*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
