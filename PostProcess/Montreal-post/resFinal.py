# %%

from torch_geometric.nn import GCNConv, global_mean_pool, GATConv, GraphNorm
from torch import nn
import torch
import torch.nn.functional as F
from models import GraphClassifier
from torch.utils.checkpoint import checkpoint
from torch_geometric.data import Data, DataLoader

device = torch.device('cpu')

dataset = torch.load('../../Montreal-1.pt', weights_only=False)
train_loader = DataLoader(dataset, batch_size=64, shuffle=False)

dim = 41


hidden_dim = 32
heads = 8
numUnit1 = 1024
numUnit2 = numUnit1
numUnit3 = 512
numGCN = 3
activation = 'elu'

# Initialize the model for classification and move it to the device
modelFinal = GraphClassifier(
        in_feats = dim,
        hidden_dim = hidden_dim,
        heads = heads,
        num_gcn_layers = numGCN,
        mlp_units = [numUnit1, numUnit2, numUnit3],
        mlp_activation=F.leaky_relu,
        final_activation=F.elu,
        ).to(device)

state_dict = torch.load(f'model_gnn_GAT_{numGCN}GCN_3FFNN_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth', map_location=torch.device('cpu'), weights_only=False)

#print(f'GAT_1GCN_2FFNN-elu/model_gnn_GAT_1GCN_2FFNN_test_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth')
modelFinal.load_state_dict(state_dict)

# %%


# %%
import numpy as np  
pred_list = []
actual_list = []

modelFinal.eval()
with torch.no_grad():
    for batch in train_loader:
        # Forward pass to get predictions and convert them to numpy arrays.
        pred_batch = torch.clamp(modelFinal(batch), min=0, max=1).detach().cpu().numpy()
        # clamp the predictions to be between 0 and 1
        
        actual_batch = batch.y.detach().cpu().numpy()
        
        # Append the results to the lists.
        pred_list.append(pred_batch)
        actual_list.append(actual_batch)

# Concatenate all predictions and actual values along the first axis.
pred = np.concatenate(pred_list, axis=0)
actual = np.concatenate(actual_list, axis=0)




# %%
import matplotlib.pyplot as plt
from pypalettes import load_cmap
cmap = load_cmap("Bay")
palette = cmap.colors
# number of discrete colors in the colormap
n = cmap.N

# generate n evenly spaced floats in [0,1]
stops = np.linspace(0, 1, n)

# sample the map
palette = [cmap(s) for s in stops]

color_predicted = palette[0]
color_actual    = palette[2]
# …then plot exactly as above…

plt.scatter(np.arange(len(pred)), pred, label='Predicted', color=color_predicted)
plt.scatter(np.arange(len(actual)), actual, label='Actual', color=color_actual)
plt.xlabel('Quantum Circuits', fontsize=14)
plt.ylabel('PST', fontsize=14)
plt.legend()

plt.savefig('actual_pred_plot_bestModel_Montreal.pdf', format='pdf', bbox_inches='tight')
plt.close()

# %%
# calculate the mean squared error
from sklearn.metrics import mean_squared_error
mse = mean_squared_error(actual, pred)
print(f'Mean Squared Error: {mse}')

# %%
from sklearn.metrics import r2_score

r2 = r2_score(actual, pred)
print(f"R^2 = {r2:.4f}")


# %%
np.sqrt(1/ len(actual) * np.sum((actual - pred) ** 2)) * 100


# %%
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import GATConv, GCNConv, global_mean_pool
from typing import Callable, List, Optional

class GraphClassifier_TSNE(nn.Module):
    def __init__(
        self,
        in_feats: int,
        hidden_dim: int,
        heads: int,
        num_gcn_layers: int,
        mlp_units: List[int],
        *,
        conv_activation: Callable = F.leaky_relu,
        conv_act_kwargs: Optional[dict] = None,
        mlp_activation: Callable = F.leaky_relu,
        mlp_act_kwargs: Optional[dict] = None,
        final_activation: Callable = torch.sigmoid
    ):
        """
        A flexible GAT+GCN+MLP graph classification model.

        Args:
          in_feats:        dimensionality of node features
          hidden_dim:      each GAT head’s output size
          heads:           number of attention heads in the GAT layer
          num_gcn_layers:  how many GCNConv layers (with residuals) to stack after the GAT
          mlp_units:       list of hidden‐layer sizes for the final MLP
          conv_activation: activation fn after each graph layer
          conv_act_kwargs: extra kwargs for conv_activation
          mlp_activation:  activation fn in the MLP head
          mlp_act_kwargs:  extra kwargs for mlp_activation
          final_activation: activation applied to the final scalar output
        """
        super().__init__()
        self.conv_activation = conv_activation
        self.conv_act_kwargs = conv_act_kwargs or {}
        self.mlp_activation = mlp_activation
        self.mlp_act_kwargs = mlp_act_kwargs or {}
        self.final_activation = final_activation

        # --- GRAPH ENCODER ---
        self.convs = nn.ModuleList()
        # 1) GAT
        self.convs.append(GATConv(in_feats, hidden_dim, heads=heads))
        # 2) stack of GCNs, all dims = hidden_dim * heads
        gcn_dim = hidden_dim * heads
        for _ in range(num_gcn_layers):
            self.convs.append(GCNConv(gcn_dim, gcn_dim))

        # --- MLP HEAD ---
        self.fcs = nn.ModuleList()
        last_dim = gcn_dim
        for out_dim in mlp_units:
            self.fcs.append(nn.Linear(last_dim, out_dim))
            last_dim = out_dim

        # final linear → scalar
        self.out = nn.Linear(last_dim, 1)

    def forward(self, data):
        x, edge_index, batch = data.X, data.edge_index, data.batch
        #print(f"Input shape: {x.shape}, Edge index shape: {edge_index.shape}, Batch shape: {batch.shape}")
        # 1) Graph stack with residuals
        for i, conv in enumerate(self.convs):
            x_new = conv(x, edge_index)
            x_new = self.conv_activation(x_new, **self.conv_act_kwargs)
            x = x_new if i == 0 else x + x_new

        # 2) Global pooling
        x = global_mean_pool(x, batch)
        z = x.clone()
        # 3) MLP head
        for fc in self.fcs:
            x = self.mlp_activation(fc(x), **self.mlp_act_kwargs)

        # 4) Final scalar + final_activation
        x = self.out(x).view(-1)
        return self.final_activation(x), z
    



# %%

from torch_geometric.nn import GCNConv, global_mean_pool, GATConv, GraphNorm
from torch import nn
import torch
import torch.nn.functional as F
from models import GraphClassifier
from torch.utils.checkpoint import checkpoint
from torch_geometric.data import Data, DataLoader

device = torch.device('cpu')

dataset = torch.load('../../Montreal-1.pt', weights_only=False)
train_loader = DataLoader(dataset, batch_size=64, shuffle=False)

dim = 41


'''hidden_dim = 
heads = 4
numUnit1 = 1024
numUnit2 = numUnit1
numUnit3 = numUnit2
numGCN = 3
activation = 'elu'''

# Initialize the model for classification and move it to the device
modelFinal = GraphClassifier_TSNE(
        in_feats = dim,
        hidden_dim = hidden_dim,
        heads = heads,
        num_gcn_layers = numGCN,
        mlp_units = [numUnit1, numUnit2, numUnit3],
        mlp_activation=F.leaky_relu,
        final_activation=F.elu,
        ).to(device)

state_dict = torch.load(f'model_gnn_GAT_{numGCN}GCN_3FFNN_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth', map_location=torch.device('cpu'), weights_only=False)
#print(f'GAT_1GCN_2FFNN-elu/model_gnn_GAT_1GCN_2FFNN_test_{hidden_dim}_{heads}_{numUnit1}_{numUnit2}_{numUnit3}.pth')
modelFinal.load_state_dict(state_dict)

# 2) Inference loop: collect *all* zs and ys
output_tsne_list, actual_list = [], []
modelFinal.eval()
with torch.no_grad():
    for batch in train_loader:
        preds, z = modelFinal(batch)
        output_tsne_list.append(z.cpu().numpy())
        actual_list.append(batch.y.cpu().numpy())

all_embeddings = np.concatenate(output_tsne_list, axis=0)
all_targets    = np.concatenate(actual_list,    axis=0)

# 3) (Optional) PCA → TSNE
from sklearn.decomposition import PCA
from sklearn.manifold    import TSNE

pca = PCA(n_components=min(50, all_embeddings.shape[1]), random_state=0)
reduced = pca.fit_transform(all_embeddings)

tsne = TSNE(n_components=2, perplexity=30, random_state=0)
X_embedded = tsne.fit_transform(reduced)

# 4) Plot





# %%
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap

from pypalettes import load_cmap

# Load your custom palette
cmap    = load_cmap("Bay")
palette = cmap.colors

# Create the TSNE scatter with the palette
plt.figure(figsize=(6, 6))
sc = plt.scatter(
    X_embedded[:, 0],
    X_embedded[:, 1],
    c=all_targets,
    cmap=ListedColormap(palette),
    alpha=0.7
)
plt.colorbar(sc, label="True target value")
#plt.title("t-SNE of GNN graph embeddings")
plt.xlabel("t-SNE Dim 1", fontsize=14)
plt.ylabel("t-SNE Dim 2", fontsize=14)

# Save to PDF
plt.savefig("tsne_plot_bestModel_Montreal.pdf", format="pdf", bbox_inches="tight")
plt.close()


# %%



