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
  
    #assign vertices to board spaces
    populated_matrix = matrix.map.with_index { |row, j|  row.map.with_index { |value, i| value = Node.new("#{i}, #{j}") } }.each_slice(8).map { |i| i }
  
    #assign adjacent
    board_adjacencies = populated_matrix[0].map.with_index { |row, i| row.map.with_index { |value, j| 
  
      if populated_matrix[0][i + 2] != nil && (i + 2) < populated_matrix[0].length && (j + 1) < 8
        value.adjacent.push(populated_matrix[0][i + 2][j + 1]) 
      end
  
      if populated_matrix[0][i + 1] != nil && (i + 1) < 8 && (j + 2) < 8
        value.adjacent.push(populated_matrix[0][i + 1][j + 2]) 
      end
  
      if populated_matrix[0][i + 2] != nil && (i + 2) < 8 && (j - 1) > -1
        value.adjacent.push(populated_matrix[0][i + 2][j - 1]) 
      end
  
      if populated_matrix[0][i + 1] != nil && (i + 1) < 8 && (j - 2) > -1
        value.adjacent.push(populated_matrix[0][i + 1][j - 2]) 
      end
  
      if populated_matrix[0][i - 2][j - 1] && (i - 2) > -1 && (j - 1) > -1
        value.adjacent.push(populated_matrix[0][i - 2][j - 1]) 
      end
  
      if populated_matrix[0][i - 1][j - 2] && (i - 1) > -1 && (j - 2) > -1
        value.adjacent.push(populated_matrix[0][i - 1][j - 2]) 
      end
  
      if populated_matrix[0][i - 2][j + 1] && (i - 2) > - 1 && (j + 1) < 8
        value.adjacent.push(populated_matrix[0][i - 2][j + 1]) 
      end
  
      if populated_matrix[0][i - 1][j + 2] && (i - 1) > -1 && (j + 2) < 8
        value.adjacent.push(populated_matrix[0][i - 1][j + 2]) 
      end
      
      puts value.adjacent.map { |value| value.data }.inspect
        } }
  
  end  
  
  map_board(matrix)
  
  def knight_moves (vertex_1, vertex_2)
  
    #construct undirected graph representing every possible move of a knight on the board
    #take first parameter (vertex) and locate in the graph
    #take second parameter (vertex) and locate in the graph
    #locate path with fewest edges between vertices
    #display each vertex from first location to second location
  
  end  
  
  