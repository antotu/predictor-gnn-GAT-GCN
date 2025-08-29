// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(1.8018552858701211) q[0];
sx q[0];
rz(-0.41622733229288045) q[0];
sx q[0];
rz(1.836105990553012) q[0];
rz(-0.24466713250416694) q[1];
sx q[1];
rz(-3.056954793457603) q[1];
sx q[1];
rz(-2.3160588066866374) q[1];
cx q[1],q[0];
rz(1.0623035573948894) q[0];
sx q[1];
rz(-3.3484953937995714) q[1];
cx q[1],q[0];
rz(0.001670733813022793) q[0];
sx q[1];
cx q[1],q[0];
rz(-0.004896499890996608) q[0];
sx q[0];
rz(-1.5584420442573181) q[0];
sx q[0];
rz(3.129076439032233) q[0];
rz(-1.6165789896885903) q[1];
sx q[1];
rz(-1.434525021558704) q[1];
sx q[1];
rz(-0.8800204792870723) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];