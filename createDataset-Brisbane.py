nameFile = 'bestFidelities-circuits.csv'
# for each line of the file, get the first field and find in the folder MQTBench_2025-04-14-12-07-50 the corresponding file
# the label is the second field of the line
import pandas as pd
import os
import numpy as np
import qiskit
from qiskit import QuantumCircuit
from qiskit.converters import circuit_to_dag
from qiskit.visualization import dag_drawer
from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import RemoveBarriers

# corrected imports for Gate and ControlledGate
from qiskit.circuit import Gate
from qiskit.circuit.controlledgate import ControlledGate
import math
import torch
import networkx as nx
from torch_geometric.utils import from_networkx
from torch_geometric.data import Data, DataLoader

first = True




with open(nameFile, 'r') as f:
    dictRes = {}
    for line in f:
        if first:
            first = False
            continue
        # get the first field and the second field
        fields = line.split(',')
        # get the first field
        fileName = fields[0]
        # get the second field
        label = float(fields[1])
        # remove the first field from the file name
        category = fileName.split('_')[0]
        fileName = 'MQTBench_2025-04-14-12-07-50/' + fileName + '.qasm'
        # check if the file exists
        if os.path.exists(fileName):
            print(fileName)
            qc = QuantumCircuit.from_qasm_file(fileName)
            #print(qc.num_qubits, qc.depth(), qc.size())
            pm = PassManager(RemoveBarriers())

            # Run it
            qc = pm.run(qc)
            
            dag = circuit_to_dag(qc)
            #category = fileName.split('_')[0]
            #dag_drawer(dag, filename='dag.png')
            dictRes[fileName] = {
                'dag' : dag,
                'category' : category,
                'num_qubits' : qc.num_qubits,
                'depth' : qc.depth(),
                'label' : label,
            }




# --- 1) collect all distinct gate names ---
unique_gates = set()
for info in dictRes.values():
    dag = info['dag']
    for node in dag.op_nodes():
        unique_gates.add(node.op.name)

unique_gates = sorted(unique_gates)
print('Unique Gates: ', unique_gates)
gate2idx = {g: i for i, g in enumerate(unique_gates)}
G = len(unique_gates)

# helper to extract qubit-vector of length 3
def qubit_vector(node):
    """Return [target, ctrl1, ctrl2], fill -1 if missing."""
    qinds = [q._index for q in node.qargs]
    # number of controls supported by the Gate object:
    n_ctrl = getattr(node.op, "num_ctrl_qubits", 0)
    # assume controls appear first, then target:
    ctrls = qinds[:n_ctrl]
    tgt   = qinds[-1] if qinds else -1
    # pad to 2 controls
    ctrls = ctrls + [-1] * (2 - len(ctrls))
    return [tgt, ctrls[0], ctrls[1]]

# helper to extract up to 3 real-valued params
def param_vector(node, dim=3):
    p = [float(val) for val in node.op.params]
    p = p[:dim]                   # truncate if more than dim
    p = p + [0.0] * (dim - len(p))  # pad with zeros
    return p

# --- 2) build dataset ---
dataset = []
for fname, info in dictRes.items():
    dag   = info['dag']
    label = info['label']
    category = info['category']
    num_qubits = info['num_qubits']
    depth = info['depth']
    nodes = list(dag.op_nodes())
    N     = len(nodes)

    # preallocate feature arrays
    onehots = torch.zeros((N, G), dtype=torch.float)
    qubits  = torch.full((N, 3), -1, dtype=torch.long)
    params  = torch.zeros((N, 3), dtype=torch.float)

    for i, node in enumerate(nodes):
        # 2a) one-hot gate
        onehots[i, gate2idx[node.op.name]] = 1.0

        # 2b) [target, ctrl1, ctrl2]
        qubits[i] = torch.tensor(qubit_vector(node), dtype=torch.long)  / num_qubits

        # 2c) up to 3 angle params
        params[i] = torch.tensor(param_vector(node), dtype=torch.float) % (2 * math.pi)

    # (optional) concatenate into a single X:
        X = torch.cat([onehots, qubits.float(), params], dim=1)

    # build edges
    idx_map = {node: i for i, node in enumerate(nodes)}
    edges = []
    for src, dst, _ in dag.edges():
        if src in idx_map and dst in idx_map:
            edges.append([idx_map[src], idx_map[dst]])
    edge_index = torch.tensor(edges, dtype=torch.long).t().contiguous()

    # wrap into PyG Data and attach all three feature tensors
    data = Data(
        X           = X,
        edge_index  = edge_index,
        y           = torch.tensor([label], dtype=torch.float),
        category    = category,
        num_qubits   = num_qubits,
        depth       = depth,
        num_nodes   = N,
    )
    dataset.append(data)

print(f"Prepared {len(dataset)} graphs; each node has:")
print(f" - onehot:{G},  qubit_ids:3,  angles:3")

# save dataset
torch.save(dataset, 'Brisbane.pt')
print(unique_gates)




            
