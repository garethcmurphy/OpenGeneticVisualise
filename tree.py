
from Bio import Phylo
import matplotlib.pyplot as plt

# Example Newick format tree
tree = Phylo.read("example_tree.newick", "newick")

# Configure circular plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(1, 1, 1, polar=True)  # Polar projection for circular plot

# Draw the tree
Phylo.draw(tree, do_show=False, axes=ax)
plt.show()