// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg meas[2];
rz(0.3327292223075823*pi) q[0];
rz(1.1034000280915752*pi) q[1];
rx(3.942319293221481*pi) q[0];
rx(3.360587830315146*pi) q[1];
rz(3.2487140896648463*pi) q[0];
rz(3.398809488565404*pi) q[1];
rz(3.5*pi) q[0];
rz(3.5*pi) q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.4983819682003917*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rzz(0.07245691728157581*pi) q[0],q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rzz(0.04198409027629539*pi) q[0],q[1];
rz(1.0*pi) q[0];
rz(1.0*pi) q[1];
rz(0.6434539246448798*pi) q[0];
rz(0.3128728378023018*pi) q[1];
rx(3.561748652998143*pi) q[0];
rx(3.3943333279057004*pi) q[1];
rz(0.155079988491174*pi) q[0];
rz(2.0363068604198133*pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
