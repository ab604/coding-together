# Working directory flowchart
# A.Bailey October 23rd 2019


library(DiagrammeR)

# Absolute path ----------------------------------------------------------------
DiagrammeR::grViz(
        "digraph graph2{
  # Define graph
  graph [layout = dot, rankdir = UD, label = '/users/alistair/Documents/coding-together-week-02/data/surveys.csv', fontsize = 32]
  
  # Define nodes and shape
  node [shape = folder, fontname = Helvetica, width = 2]
  edge [arrowhead='none']
  
  # Nodes
  root [label = '/',  style = filled , fillcolor = linen]
  bin [label = 'bin']
  data [label = 'data']
  users [label = 'users', style = filled , fillcolor = linen]
  tmp [label = 'tmp']
  alistair [label = 'alistair', style = filled , fillcolor = linen]
  docs [label = 'Documents', style = filled , fillcolor = linen]
  music [label = 'Music']
  pictures [label = 'Pictures']
  cd1 [label = 'coding-together-week-01']
  cd2 [label = 'coding-together-week-02', style = filled , fillcolor = linen]
  cd3 [label = 'coding-together-week-03']
  cd2d [label = 'data', style = filled , fillcolor = linen]
  cd2r [label = 'R']
  #cd2f [label = 'figures']
  #cd2o [label = 'outputs']
  cd1d [label = 'data']
  cd1r [label = 'R']
  cd3d [label = 'data']
  cd3r [label = 'R']
  #cd1f [label = 'figures']
  #cd1o [label = 'outputs']
  surveys [label = 'surveys.csv', shape = rectangle,style = filled , fillcolor = wheat]
  
  # Edges
  root -> users[color = red, penwidth=3]
  root -> {bin,data,tmp}
  users -> alistair[color = red, penwidth=3]
  alistair -> {music,pictures}
  alistair -> docs[color = red, penwidth=3]
  docs -> {cd1,cd3}
  docs -> cd2[color = red, penwidth=3]
  cd2 -> cd2d[color = red, penwidth=3]
  cd1 -> {cd1d,cd1r}
  cd2 -> {cd2r}
  cd3 -> {cd3d,cd3r}
  cd2d -> surveys[color = red, penwidth=3]
  
  
        }" #, width =1000, height=660
)

# Home file path

DiagrammeR::grViz(
        "digraph graph2{
  # Define graph
  graph [layout = dot, rankdir = UD, label = '~/Documents/coding-together-week-02/data/surveys.csv', fontsize = 32]
  
  # Define nodes and shape
  node [shape = folder, fontname = Helvetica, width = 2]
  edge [arrowhead='none']
  
  # Nodes
  root [label = '/']
  bin [label = 'bin']
  data [label = 'data']
  users [label = 'users']
  tmp [label = 'tmp']
  alistair [label = 'alistair', style = filled , fillcolor = wheat]
  docs [label = 'Documents', style = filled , fillcolor = linen]
  music [label = 'Music']
  pictures [label = 'Pictures']
  cd1 [label = 'coding-together-week-01']
  cd2 [label = 'coding-together-week-02', style = filled , fillcolor = linen]
  cd3 [label = 'coding-together-week-03']
  cd2d [label = 'data', style = filled , fillcolor = linen]
  cd2r [label = 'R']
  #cd2f [label = 'figures']
  #cd2o [label = 'outputs']
  cd1d [label = 'data']
  cd1r [label = 'R']
  cd3d [label = 'data']
  cd3r [label = 'R']
  #cd1f [label = 'figures']
  #cd1o [label = 'outputs']
  surveys [label = 'surveys.csv', shape = rectangle,style = filled , fillcolor = wheat]
  
  # Edges
  root -> users[color = blue, penwidth=2]
  root -> {bin,data,tmp}
  users -> alistair[color = blue, penwidth=2]
  alistair -> {music,pictures}
  alistair -> docs[color = red, penwidth=3]
  docs -> {cd1,cd3}
  docs -> cd2[color = red, penwidth=3]
  cd2 -> cd2d[color = red, penwidth=3]
  cd1 -> {cd1d,cd1r}
  cd2 -> {cd2r}
  cd3 -> {cd3d,cd3r}
  cd2d -> surveys[color = red, penwidth=3]
  
  
        }" #, width =1000, height=660
) 


# Relative file path ----------------------------------------------------------
DiagrammeR::grViz(
        "digraph graph2{
  # Define graph
  graph [layout = dot, rankdir = UD, label = '../../coding-together-week-02/data/surveys.csv', fontsize = 32]
  
  # Define nodes and shape
  node [shape = folder, fontname = Helvetica, width = 2]
  edge [arrowhead='none']
  
  # Nodes
  root [label = '/']
  bin [label = 'bin']
  data [label = 'data']
  users [label = 'users']
  tmp [label = 'tmp']
  alistair [label = 'alistair']
  docs [label = 'Documents', style = filled , fillcolor = linen]
  music [label = 'Music']
  pictures [label = 'Pictures']
  cd1 [label = 'coding-together-week-01', style = filled , fillcolor = linen]
  cd2 [label = 'coding-together-week-02', style = filled , fillcolor = linen]
  cd3 [label = 'coding-together-week-03']
  cd2d [label = 'data', style = filled , fillcolor = linen]
  cd2r [label = 'R']
  #cd2f [label = 'figures']
  #cd2o [label = 'outputs']
  cd1d [label = 'data']
  cd1r [label = 'R', style = filled , fillcolor = wheat]
  cd3d [label = 'data']
  cd3r [label = 'R']
  #cd1f [label = 'figures']
  #cd1o [label = 'outputs']
  surveys [label = 'surveys.csv', shape = rectangle,style = filled , fillcolor = wheat]
  
  # Edges
  root -> users
  root -> {bin,data,tmp}
  users -> alistair
  alistair -> {music,pictures}
  alistair -> docs
  docs -> {cd3}
  docs -> cd2[color = red, penwidth=3]
  docs -> cd1[color = red, penwidth=3]
  cd2 -> cd2d[color = red, penwidth=3]
  cd1 -> {cd1d}
  cd1 -> cd1r[color = red, penwidth=3]
  cd2 -> {cd2r}
  cd3 -> {cd3d,cd3r}
  cd2d -> surveys[color = red, penwidth=3]
  
  
        }" #, width =1000, height=660
)
