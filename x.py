from ete3 import Tree

t = Tree("((a,b),c);")
t.render("mytree.png", w=183, units="mm")
