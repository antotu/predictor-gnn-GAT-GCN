import warnings
# ─────────────────────────────────────────────────────────────────────────
# Suppress torch-geometric “plugin” import warnings (torch-scatter, etc.)
warnings.filterwarnings(
    "ignore",
    message=r"An issue occurred while importing 'torch-scatter'.*",
    category=UserWarning,
    module=r"torch_geometric.typing"
)
warnings.filterwarnings(
    "ignore",
    message=r"An issue occurred while importing 'torch-spline-conv'.*",
    category=UserWarning,
    module=r"torch_geometric.typing"
)
warnings.filterwarnings(
    "ignore",
    message=r"An issue occurred while importing 'torch-sparse'.*",
    category=UserWarning,
    module=r"torch_geometric.typing"
)
# ─────────────────────────────────────────────────────────────────────────

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch_geometric.loader import DataLoader
from torch_geometric.nn import GCNConv, GATConv, global_mean_pool
from sklearn.model_selection import train_test_split
from models import GraphClassifier

# Check for GPU
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# Load the dataset
dataset = torch.load('dataset.pt', weights_only=False)

# Optional: if you really have binary labels and want to see balance
labels = [data.y.item() for data in dataset]
if set(labels) <= {0, 1}:
    perc_0 = labels.count(0) / len(labels)
    perc_1 = labels.count(1) / len(labels)
    print(f"Class 0: {perc_0:.2%}, Class 1: {perc_1:.2%}")

def split_dataset(dataset, train_ratio=0.8):
    """
    Splits for regression (no stratification).
    """
    train_data, test_data = train_test_split(
        dataset,
        train_size=train_ratio
    )
    return train_data, test_data



def train_model(model, loader, epochs=30, lr=5e-3):
    optimizer = optim.Adam(model.parameters(), lr=lr, weight_decay=1e-5)
    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=10, gamma=0.7)
    loss_fn = nn.MSELoss()

    model.train()
    for epoch in range(1, epochs+1):
        total_loss = 0.0
        for batch in loader:
            batch = batch.to(device)
            optimizer.zero_grad()
            output = model(batch)
            loss = loss_fn(output, batch.y.float())
            loss.backward()
            optimizer.step()
            total_loss += loss.item()
        print(epoch, total_loss / len(loader))
        scheduler.step()
        # print(f"Epoch {epoch:02d} train loss: {total_loss/len(loader):.4f}")

def evaluate_model(model, loader, verbose=False):
    model.eval()
    loss_fn = nn.MSELoss()
    total_loss = 0.0

    with torch.no_grad():
        for batch in loader:
            batch = batch.to(device)
            output = model(batch)
            total_loss += loss_fn(output, batch.y.float()).item()
            if verbose:
                print("Preds:", output.cpu().numpy())
                print("True :", batch.y.cpu().numpy())
        avg_loss = total_loss / len(loader)
        if verbose:
            print(f"Avg loss: {avg_loss:.4f}")
    return avg_loss

# Hyperparameter sweep
'''resVal = []
for reps in range(1, 6):
    for hidden_dim in [32, 64]:
        for heads in [4, 8]:
            if hidden_dim == 64 and heads == 8:
                continue
            for numUnit1 in [32, 64, 128, 256, 512, 1024, 2048]:
                numUnit2 = numUnit1
                while numUnit2 >= 16:
                    numUnit3 = numUnit2
                    while numUnit3 >= 16:

                        train_data, test_data = split_dataset(dataset)
                        train_loader = DataLoader(train_data, batch_size=64, shuffle=True)
                        test_loader  = DataLoader(test_data,  batch_size=64, shuffle=False)

                        # Determine input feature size
                        input_dim = train_data[0].X.size(1)

                        model = QuantumGAT(
                            in_feats=input_dim,
                            hidden_dim=hidden_dim,
                            heads=heads,
                            numUnit1=numUnit1,
                            numUnit2=numUnit2,
                            numUnit3=numUnit3
                        ).to(device)

                        train_model(model, train_loader, epochs=50, lr=1e-3)

                        train_loss = evaluate_model(model, train_loader)
                        test_loss  = evaluate_model(model, test_loader)

                        resVal.append({
                            'hidden_dim': hidden_dim,
                            'heads': heads,
                            'numUnit1': numUnit1,
                            'numUnit2': numUnit2,
                            'numUnit3': numUnit3,
                            'reps': reps,
                            'train_loss': train_loss,
                            'test_loss': test_loss,
                        })
                        print(resVal[-1])

                        torch.save(model, f'GAT_1GCN_2FFNN-elu/model_gnn_GAT_1GCN_2FFNN_{reps}_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth')

                        numUnit3 //= 2
                    numUnit2 //= 2

# Optionally save:
import json
with open("results.json", "w") as f:
    json.dump(resVal, f, indent=2)
'''
train_data, test_data = split_dataset(dataset)
train_loader = DataLoader(train_data, batch_size=64, shuffle=True)
test_loader  = DataLoader(test_data,  batch_size=64, shuffle=False)

                        # Determine input feature size
input_dim = train_data[0].X.size(1)
hidden_dim = 64
heads = 4
numUnit1 = 1024
numUnit2 = 1024
numUnit3 = 1024
#numUnit4 = 1024
model = GraphClassifier(
    in_feats = dataset[0].X.size(1),
    hidden_dim = hidden_dim,
    heads = heads,
    num_gcn_layers = 3,
    mlp_units = (numUnit1, numUnit2, numUnit3),
    conv_activation = F.leaky_relu,
    mlp_activation= F.leaky_relu,
    final_activation = F.elu,
    ).to(device)

train_model(model, train_loader, epochs=100, lr=1e-3)

train_loss = evaluate_model(model, train_loader)
test_loss  = evaluate_model(model, test_loader)

torch.save(model.state_dict(), f'bestModel/model_gnn_GAT_3GCN_3FFNN_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth')
print(train_loss, test_loss)