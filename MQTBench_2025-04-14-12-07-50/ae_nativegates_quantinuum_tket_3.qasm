// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// TKET version: 1.25.0
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";

qreg eval[2];
qreg q[1];
creg meas[3];
rx(3.25*pi) eval[0];
rz(3.0*pi) eval[1];
rz(0.5*pi) q[0];
rz(0.5*pi) eval[0];
rx(2.5*pi) eval[1];
rx(1.4096655293982674*pi) q[0];
rx(1.5*pi) eval[0];
rz(0.5*pi) eval[1];
rz(0.5*pi) q[0];
rx(0.5*pi) eval[1];
rx(1.5*pi) q[0];
rzz(0.2951672353008671*pi) eval[0],q[0];
rz(0.5*pi) eval[1];
rx(0.5*pi) eval[0];
rx(0.5*pi) q[0];
rz(0.5*pi) eval[0];
rz(0.5*pi) q[0];
rx(0.5*pi) eval[0];
rx(0.5*pi) q[0];
rz(3.0*pi) eval[0];
rz(3.0*pi) q[0];
rx(0.5*pi) eval[0];
rx(0.5*pi) q[0];
rz(3.0*pi) eval[0];
rz(0.5*pi) q[0];
rx(0.5*pi) eval[0];
rx(0.5*pi) q[0];
rz(0.5*pi) eval[0];
rz(0.5*pi) q[0];
rx(0.5*pi) eval[0];
rzz(0.40966552939826806*pi) eval[1],q[0];
rz(0.5*pi) eval[0];
rx(0.5*pi) eval[1];
rx(0.5*pi) q[0];
rz(0.5*pi) eval[1];
rz(0.5*pi) q[0];
rx(0.5*pi) eval[1];
rx(0.5*pi) q[0];
rz(0.5*pi) eval[1];
rx(0.40966552939826717*pi) q[0];
rx(1.75*pi) eval[1];
rz(1.5*pi) q[0];
rz(0.5*pi) eval[1];
rx(0.5*pi) eval[1];
rz(0.5*pi) eval[1];
rzz(0.25*pi) eval[0],eval[1];
rx(0.5*pi) eval[0];
rx(0.5*pi) eval[1];
rz(0.5*pi) eval[0];
rz(0.5*pi) eval[1];
rx(0.5*pi) eval[0];
rx(0.5*pi) eval[1];
rz(3.0*pi) eval[0];
rz(3.5*pi) eval[1];
rx(1.0*pi) eval[0];
rx(2.5*pi) eval[1];
rz(0.5*pi) eval[1];
barrier eval[0],eval[1],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure q[0] -> meas[2];
