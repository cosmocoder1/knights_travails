#construct board
def render_board
  
  def render_row
    $row_break = ["-----------------------------------------"]
    puts $row_break
    8.times { print "|    "}
    puts "|"
  end

  8.times { render_row }
  puts $row_break
end  

render_board

def knight_moves (vertex_1, vertex_2)


  #construct undirected graph representing every possible move of a knight on a board
  #take first parameter (vertex) and locate in the graph
  #take second parameter (vertex) and locate in the graph
  #locate path with fewest edges between vertices
  #display each vertex from first location to second location

end  

