import pm4py
from matplotlib import pyplot as plt

from config import INPUT_G_PATH
from os.path import join
import networkx as nx

instance_graphs = []
mapping = []
with open(join(INPUT_G_PATH, 'prova_correct_instance_graphs.g')) as lines:
    for line in lines:
        if line.startswith('XP'):
            map = {}
            G = nx.DiGraph()
        elif line.startswith('v'):
            map.update({int(line.split()[1]): line.split()[2]})
        elif line.startswith('e'):
            G.add_edges_from([(line.split()[1], line.split()[2])])
        else:
            instance_graphs.append(G)
            mapping.append(map)

log = 'Input/xes/prova_correct.xes'
log = pm4py.read_xes(log)

for case in log:
    for idx, evt in enumerate(case):
        evt['event-identifier'] = f"e_{idx}"

for i, instance_graph in enumerate(instance_graphs):
    print([evt['concept:name'] for evt in log[i]])
    g = nx.relabel_nodes(instance_graph, mapping[i])
    nx.draw(g, with_labels=True)
    plt.show()