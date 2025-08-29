import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import GATConv, GCNConv, global_mean_pool
from typing import Callable, List, Optional

class GraphClassifier(nn.Module):
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

        # 1) Graph stack with residuals
        for i, conv in enumerate(self.convs):
            x_new = conv(x, edge_index)
            x_new = self.conv_activation(x_new, **self.conv_act_kwargs)
            x = x_new if i == 0 else x + x_new

        # 2) Global pooling
        x = global_mean_pool(x, batch)

        # 3) MLP head
        for fc in self.fcs:
            x = self.mlp_activation(fc(x), **self.mlp_act_kwargs)

        # 4) Final scalar + final_activation
        x = self.out(x).view(-1)
        return self.final_activation(x)
