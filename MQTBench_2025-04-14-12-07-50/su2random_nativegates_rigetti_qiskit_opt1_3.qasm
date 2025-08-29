// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rx', 'rz', 'cz', 'cp', 'xx_plus_yy', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
rz(pi/2) q[0];
rx(1.4368347742816616) q[0];
rz(3.1340772259307386) q[0];
rz(-1.5802573505510455) q[1];
rx(1.7011789004668723) q[1];
rz(1.5695662301030726) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-3.035372509559241) q[2];
rx(1.6884674481250312) q[2];
rz(-2.40427034099174) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(1.2444656817555668) q[0];
rz(2.1258517492520124) q[0];
cz q[1],q[2];
rz(-0.028426918476960772) q[1];
rx(1.1655909475175446) q[1];
rz(0.07200628197114156) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(1.9031263467739556) q[2];
rx(1.08611688400584) q[2];
rz(-1.7302361674841276) q[2];
cz q[0],q[2];
rz(-pi/2) q[0];
rx(0.02480768898038398) q[0];
rz(-0.8637741970177757) q[0];
cz q[1],q[2];
rz(0.1769569092006038) q[1];
rx(1.5572853394862916) q[1];
rz(-1.495388655246947) q[1];
cz q[0],q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(0.24382788476767958) q[2];
rx(1.670676931231081) q[2];
rz(1.1895847785251359) q[2];
cz q[0],q[2];
rz(pi/2) q[0];
rx(0.5166404252966228) q[0];
rz(-0.6775155725839603) q[0];
cz q[1],q[2];
rz(pi/2) q[1];
rx(1.7933732440688746) q[1];
rz(0.774972851331754) q[1];
rz(-pi/2) q[2];
rx(1.303482178803299) q[2];
rz(2.664910098465823) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];