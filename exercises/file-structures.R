# Working directory flowchart
# A.Bailey October 23rd 2019


library(DiagrammeR)

DiagrammeR::grViz(
        "digraph graph2{
  # Define graph
  graph [layout = dot, rankdir = UD]
  
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
  cd1 [label = 'coding-together-week-01', style = filled , fillcolor = linen]
  cd2 [label = 'coding-together-week-02']
  cd3 [label = 'coding-together-week-03']
  
  # Edges
  root -> users[color = red, penwidth=3]
  root -> {bin,data,tmp}
  users -> alistair[color = red, penwidth=3]
  alistair -> {music,pictures}
  alistair -> docs[color = red, penwidth=3]
  docs -> {cd2,cd3}
  docs -> cd1[color = red, penwidth=3]
  
        }" , width =1000, height=660
)
