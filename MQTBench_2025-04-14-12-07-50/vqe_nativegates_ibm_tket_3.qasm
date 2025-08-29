// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg meas[3];
sx q[0];
rz(1.0*pi) q[1];
sx q[2];
rz(1.3198135178653916*pi) q[0];
sx q[1];
rz(2.115881911739134*pi) q[2];
rz(2.5*pi) q[0];
rz(1.782467523945583*pi) q[1];
sx q[2];
sx q[0];
rz(2.5*pi) q[1];
rz(1.5*pi) q[0];
sx q[1];
rz(1.5*pi) q[1];
cx q[1],q[2];
sx q[1];
rz(1.0*pi) q[2];
rz(0.5*pi) q[1];
sx q[2];
rz(1.0*pi) q[1];
rz(2.708709053431926*pi) q[2];
sx q[1];
sx q[2];
rz(1.5*pi) q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
sx q[1];
rz(0.5*pi) q[0];
rz(0.6581238544075892*pi) q[1];
sx q[0];
rz(2.5*pi) q[1];
rz(0.014647103831149089*pi) q[0];
sx q[1];
rz(2.5*pi) q[0];
rz(1.5*pi) q[1];
sx q[0];
cx q[1],q[2];
rz(1.5*pi) q[0];
sx q[1];
sx q[2];
rz(0.5*pi) q[1];
rz(0.7034255194980029*pi) q[2];
rz(1.0*pi) q[1];
sx q[2];
sx q[1];
rz(1.5*pi) q[1];
sx q[1];
cx q[0],q[1];
sx q[0];
sx q[1];
rz(0.5*pi) q[0];
rz(0.4751574876943596*pi) q[1];
sx q[0];
sx q[1];
rz(2.0950353349303743*pi) q[0];
sx q[0];
rz(1.0*pi) q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
