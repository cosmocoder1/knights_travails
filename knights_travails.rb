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
  
  def map_board
  
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
  
    #assign vertices to board spaces
    populated_matrix = matrix.map.with_index { |row, j|  row.map.with_index { |value, i| value = Node.new("#{i}, #{j}") } }.each_slice(8).map { |i| i }
  
    #assign adjacent
    populated_matrix[0].map.with_index { |row, i| row.map.with_index { |value, j| 
  
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
      
        } }
  
      return populated_matrix
  
  end  
  
  def knight_moves 
  
  #retrieval script  
  =begin
    puts "please enter x board coordinate for starting place..."
    y_start = gets.chomp.to_i 
    sleep(1)
    puts "...please enter y board coordinate for starting place..."
    x_start = 7 - gets.chomp.to_i
    sleep(1)
    puts "thank you.  now the x coordinate for the endpoint..."
    y_end = gets.chomp.to_i
    sleep(1)
    puts "...and the y coordinate for the endpoint..."
    x_end = 7 - gets.chomp.to_i
  =end
  
    y_start = 0
    x_start = 0
    y_end = 1
    x_end = 2
  
    board = map_board
  
    #take first parameter (vertex) and locate in the graph
    vertex_1 = board[0][x_start][y_start]
    puts vertex_1.adjacent
    #take second parameter (vertex) and locate in the graph
    vertex_2 = board[0][x_end][y_end]
    puts vertex_2.adjacent
    #locate path with fewest edges between vertices
  
    def find_end (node = vertex_1)
  
      if node.adjacent.include?(vertex_2)
        puts vertex_2
        return 1
      end
  
  
      
        
      
    end  
  
    #display each vertex from first location to second location
  
  end  
  
  
  knight_moves 
  
  