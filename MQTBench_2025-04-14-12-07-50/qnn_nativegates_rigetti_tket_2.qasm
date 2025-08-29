// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(1.8125676918168265*pi) q[0];
rz(0.04465164803020194*pi) q[1];
rx(3.97148756245513*pi) q[0];
rx(3.442381017345859*pi) q[1];
rz(3.759902599474075*pi) q[0];
rz(0.6244806049832217*pi) q[1];
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
rz(3.9659981665634474*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(0.571344080520329*pi) q[1];
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
rz(3.969111343153715*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rz(1.0*pi) q[0];
rz(0.5*pi) q[1];
rz(1.0*pi) q[0];
rx(0.5*pi) q[1];
rz(0.3533674568674279*pi) q[0];
rz(0.5*pi) q[1];
rx(3.485099637813298*pi) q[0];
rz(1.0*pi) q[1];
rz(3.106151719858045*pi) q[0];
rz(1.0*pi) q[1];
rz(1.231848603514833*pi) q[1];
rx(3.484528644019012*pi) q[1];
rz(3.932537207974799*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
