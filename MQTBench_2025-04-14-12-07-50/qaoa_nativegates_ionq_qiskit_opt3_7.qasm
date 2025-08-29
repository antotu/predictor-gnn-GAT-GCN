// Benchmark was created by MQT Bench on 2024-03-18
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 1.1.0
// Qiskit version: 1.0.2
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure', 'barrier']

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg meas[7];
rxx(4.794305388793876) q[1],q[2];
rxx(4.794305388793876) q[0],q[3];
rxx(4.794305388793876) q[1],q[4];
rz(2.352812242637965) q[1];
rxx(4.794305388793876) q[2],q[4];
rz(2.352812242637965) q[2];
rxx(-2.352844701833342) q[1],q[2];
rz(2.352812242637965) q[4];
rxx(-2.352844701833342) q[1],q[4];
rz(-1.6527422770681532) q[1];
ry(pi/2) q[1];
rxx(-2.352844701833342) q[2],q[4];
rz(-1.6527422770681532) q[2];
ry(pi/2) q[2];
rz(-1.6527422770681532) q[4];
ry(pi/2) q[4];
rxx(4.794305388793876) q[0],q[5];
rz(2.352812242637965) q[0];
rxx(4.794305388793876) q[3],q[6];
rz(2.352812242637965) q[3];
rxx(-2.352844701833342) q[0],q[3];
rxx(4.794305388793876) q[5],q[6];
rz(2.352812242637965) q[5];
rxx(-2.352844701833342) q[0],q[5];
rz(-1.6527422770681532) q[0];
ry(pi/2) q[0];
rz(2.352812242637965) q[6];
rxx(-2.352844701833342) q[3],q[6];
rz(-1.6527422770681532) q[3];
ry(pi/2) q[3];
rxx(-2.352844701833342) q[5],q[6];
rz(-1.6527422770681532) q[5];
ry(pi/2) q[5];
rz(-1.6527422770681532) q[6];
ry(pi/2) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];