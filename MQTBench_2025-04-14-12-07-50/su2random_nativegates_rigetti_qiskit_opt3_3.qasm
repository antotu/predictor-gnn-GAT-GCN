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
rz(1.5632808991358422) q[0];
rz(-1.5802573505510455) q[1];
rx(1.7011789004668723) q[1];
rz(3.140362556897969) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rz(1.5423694083179358) q[1];
rz(-3.035372509559241) q[2];
rx(1.6884674481250312) q[2];
rz(-0.5011439942177844) q[2];
cz q[0],q[2];
rx(1.2444656817555668) q[0];
rz(0.5550554224571158) q[0];
cz q[1],q[2];
rx(1.1655909475175446) q[1];
rz(1.6428026087660381) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rz(1.7477532359955004) q[1];
rx(1.08611688400584) q[2];
rz(-1.486408282716448) q[2];
cz q[0],q[2];
rx(0.02480768898038398) q[0];
rz(0.7070221297771209) q[0];
cz q[1],q[2];
rx(1.5572853394862916) q[1];
rz(0.07540767154794947) q[1];
cz q[0],q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(1.670676931231081) q[2];
rz(-0.3812115482697609) q[2];
cz q[0],q[2];
rx(0.5166404252966228) q[0];
rz(-0.6775155725839603) q[0];
cz q[1],q[2];
rx(1.7933732440688746) q[1];
rz(0.774972851331754) q[1];
rx(1.303482178803299) q[2];
rz(2.664910098465823) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];