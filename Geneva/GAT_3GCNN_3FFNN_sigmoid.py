import warnings
warnings.filterwarnings("ignore", message=r"An issue occurred while importing 'torch-.*'", 
                        category=UserWarning, module=r"torch_geometric.typing")

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch_geometric.loader import DataLoader
from torch_geometric.nn import GCNConv, GATConv, global_mean_pool, GraphNorm
from models import GraphClassifier
from sklearn.model_selection import KFold
from torch.utils.data import Subset
import json
import os

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
dataset = torch.load('geneva.pt', weights_only=False)

class EarlyStopping:
    def __init__(self, patience=10, delta=1e-4):
        self.patience, self.delta = patience, delta
        self.best_loss = float('inf')
        self.counter, self.best_state = 0, None

    def step(self, loss, model):
        if loss + self.delta < self.best_loss:
            self.best_loss, self.counter = loss, 0
            self.best_state = model.state_dict()
            return False
        else:
            self.counter += 1
            return self.counter >= self.patience

    def load_best(self, model):
        model.load_state_dict(self.best_state)



def train_epoch(model, loader, optimizer, loss_fn):
    model.train()
    total = 0
    for batch in loader:
        batch = batch.to(device)
        optimizer.zero_grad()
        loss = loss_fn(model(batch), batch.y.float())
        loss.backward()
        optimizer.step()
        total += loss.item()
    return total / len(loader)

def validate(model, loader, loss_fn):
    model.eval()
    total = 0
    with torch.no_grad():
        for batch in loader:
            batch = batch.to(device)
            total += loss_fn(model(batch), batch.y.float()).item()
    return total / len(loader)

# ─────────────────────────────────────────────────────────────────────────
# Single k-fold CV + early stopping (no test split)
# ─────────────────────────────────────────────────────────────────────────
kf = KFold(n_splits=5, shuffle=True, random_state=42)
results = []
best_val = float('inf')
for hidden_dim in [32, 64]:
  for heads in [4, 8]:
    #if hidden_dim==64 and heads==8: continue
    for numUnit1 in [32,64,128,256,512,1024]:
      for numUnit2 in [u for u in (numUnit1>>i for i in range(10)) if u>=16]:
        for numUnit3 in [u for u in (numUnit2>>j for j in range(10)) if u>=16]:
            try:
                val_losses = []
                train_losses = []
                cnt = 0
                for train_idx, val_idx in kf.split(dataset):
                    train_sub = Subset(dataset, train_idx)
                    val_sub   = Subset(dataset, val_idx)

                    train_loader = DataLoader(train_sub, batch_size=64, shuffle=True)
                    val_loader   = DataLoader(val_sub,   batch_size=64, shuffle=False)

                    model = GraphClassifier(
                        in_feats = dataset[0].X.size(1),
                        hidden_dim = hidden_dim,
                        heads = heads,
                        num_gcn_layers = 3,
                        mlp_units = (numUnit1, numUnit2, numUnit3),
                        conv_activation = F.leaky_relu,
                        mlp_activation= F.leaky_relu,
                        final_activation = torch.sigmoid,
                    ).to(device)

                    optimizer = optim.Adam(model.parameters(), lr=1e-3, weight_decay=1e-5)
                    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=10, gamma=0.7)
                    loss_fn   = nn.MSELoss()
                    stopper   = EarlyStopping(patience=10, delta=1e-4)

                    for epoch in range(1, 101):
                        train_loss = train_epoch(model, train_loader, optimizer, loss_fn)
                        scheduler.step()
                        val_loss   = validate(model, val_loader, loss_fn)
                        #train_losses = train_loss / len(train_loader)
                        if stopper.step(val_loss, model):
                            break

                    stopper.load_best(model)
                    val_losses.append(validate(model, val_loader, loss_fn))
                    train_losses.append(train_loss)
                    #torch.save(model.state_dict(), f"models/model_GAT_2GCN_2FFNN_elu_{cnt}_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pt")
                    cnt += 1
                avg_val = sum(val_losses)/len(val_losses)
                avg_train = sum(train_losses)/len(train_losses)
                r = {
                    'model': 'GAT_3GCN_3FFNN_sigmoid',
                    'hidden_dim': hidden_dim,
                    'heads': heads,
                    'units': (numUnit1,numUnit2,numUnit3),
                    'avg_val_loss': avg_val,
                    'avg_train_loss': avg_train,
                }
                '''results.append({
                    'model': 'GAT_1GCN_2FFNN_elu',
                    'hidden_dim': hidden_dim,
                    'heads': heads,
                    'units': (numUnit1,numUnit2,numUnit3),
                    'avg_val_loss': avg_val,
                    'avg_train_loss': avg_train,
                })'''
                print(f"hd={hidden_dim} heads={heads} units={numUnit1, numUnit2, numUnit3} → {avg_val:.4f}")
                # save the results in a JSON file append it
                if os.path.exists('results_GAT_3GCN_3FFNN_sigmoid.json'):
                    with open('results_GAT_3GCN_3FFNN_sigmoid.json', 'r') as f:
                        results = json.load(f)
                else:
                    results = []
                results.append(r)
                with open('results_GAT_3GCN_3FFNN_sigmoid.json', 'w') as f:
                    json.dump(results, f, indent=4)
            except Exception as e:
                print(f"hd={hidden_dim} heads={heads} units={numUnit1, numUnit2, numUnit3} → {e}")
                continue

'''import json
with open('results_GAT_2GCN_2FFNN_elu.json', 'w') as f:
    json.dump(results, f, indent=4)'''
