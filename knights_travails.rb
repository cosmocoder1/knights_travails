#construct board
def render_board

  =begin  
    def render_row
      $row_break = ["-----------------------------------------"]
      puts $row_break
      8.times { print "|    "}
      puts "|"
    end
  
    8.times { render_row }
    puts $row_break
  =end
  
  end  
  
  render_board
  
  matrix = [
  
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
  
  ]
  
  class Node 
    attr_accessor :data, :adjacent
  
    def initialize (data)
      @data = data
      @adjacent = []
    end
    
    def add_adjacent (node)
      @adjacent.push(node)
    end  
  
  end
  
  def map_board (matrix)
  
    puts matrix.map.with_index { |row, j| row.map.with_index { |value, i| value = Node.new("#{j}, #{i})").data } }
  
  end
  
  map_board(matrix)
  
  
  def knight_moves (vertex_1, vertex_2)
  
    #construct undirected graph representing every possible move of a knight on the board
    #take first parameter (vertex) and locate in the graph
    #take second parameter (vertex) and locate in the graph
    #locate path with fewest edges between vertices
    #display each vertex from first location to second location
  
  end  
  
  