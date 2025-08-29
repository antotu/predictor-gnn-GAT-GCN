// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(2.4816283324344326*pi) q[0];
rz(1.1854644374475602*pi) q[1];
sx q[0];
sx q[1];
rz(2.3724174724900275*pi) q[0];
rz(2.481741312706226*pi) q[1];
sx q[0];
sx q[1];
rz(0.4632684774059168*pi) q[0];
rz(3.519821013139322*pi) q[1];
sx q[0];
sx q[1];
rz(1.5*pi) q[0];
cx q[0],q[1];
rz(1.0*pi) q[0];
rz(0.8381417244470024*pi) q[1];
sx q[0];
x q[1];
rz(0.9341408123127133*pi) q[0];
rz(0.5*pi) q[1];
cx q[0],q[1];
sx q[0];
rz(3.999468188910133*pi) q[1];
rz(0.5*pi) q[0];
cx q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.9984413956769966*pi) q[0];
rz(2.0145730742148857*pi) q[1];
sx q[0];
sx q[1];
rz(2.4960675097315823*pi) q[0];
rz(2.543376503659851*pi) q[1];
sx q[0];
sx q[1];
rz(3.9960159651685476*pi) q[0];
rz(3.719880781398726*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
