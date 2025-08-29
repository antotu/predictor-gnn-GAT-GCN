// Benchmark was created by MQT Bench on 2024-03-19
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rzz', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
creg meas264[3];
ry(-pi/2) q[0];
rz(-2.753906977209285) q[0];
ry(-pi/2) q[1];
rz(-2.7749106480632406) q[1];
rzz(5.914527571742077) q[0],q[1];
ry(-pi/2) q[2];
rz(-2.7009135272096056) q[2];
rzz(5.914173174260552) q[0],q[2];
rx(9.181494070138452) q[0];
rz(-2.8490969912360784) q[0];
rzz(5.914154810273476) q[1],q[2];
rx(9.181494070138452) q[1];
rz(-2.859247360022856) q[1];
rzz(2.8582925561050683) q[0],q[1];
rx(9.181494070138452) q[2];
rz(-2.8234870364562425) q[2];
rzz(2.8581212877034825) q[0],q[2];
rx(12.330174386105018) q[0];
rz(2.8681006217743135) q[0];
rzz(2.858112413005221) q[1],q[2];
rx(12.330174386105018) q[1];
rz(2.878318694068147) q[1];
rzz(-2.8773575215567506) q[0],q[1];
rx(12.330174386105018) q[2];
rz(2.8423198472153564) q[2];
rzz(-2.8771851107856925) q[0],q[2];
rx(3.866714320001137) q[0];
rzz(-2.8771761768927147) q[1],q[2];
rx(3.866714320001137) q[1];
rx(3.866714320001137) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas264[0];
measure q[1] -> meas264[1];
measure q[2] -> meas264[2];