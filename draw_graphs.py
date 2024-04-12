from matplotlib import pyplot as plt

from config import INPUT_G_PATH
from os.path import join
import networkx as nx

instance_graphs = []
with open(join(INPUT_G_PATH, 'prova_correct_instance_graphs.g')) as lines:
    for line in lines:
        if line.startswith('XP'):
            G = nx.DiGraph()
        elif line.startswith('v'):
            pass
        elif line.startswith('e'):
            G.add_edges_from([tuple(line.split()[3].split("__"))])
        else:
            instance_graphs.append(G)

for i, instance_graph in enumerate(instance_graphs):
    nx.draw(instance_graph, with_labels=True)
    plt.show()