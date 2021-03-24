#construct board
def render_board

end  

render_board


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

  #assign adjacencies
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

class Knight 
  attr_accessor :location, :checked, :parent

  def initialize

    @location = []
    @checked = []
    @parent = nil

  end  

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

  x_start = 0
  y_start = 0
  x_end = 4
  y_end = 0

  board = map_board

  #take first parameter (vertex) and locate in the graph
  vertex_1 = board[0][y_start][x_start]
  #take second parameter (vertex) and locate in the graph
  vertex_2 = board[0][y_end][x_end]
  #locate path with fewest edges between vertices

  def traverse (node_1, node_2)

    queue = []
    target = node_2
    knight = Knight.new
    knight.location = node_1

    while knight.location != target do
      knight.location.adjacent.map { |node| queue.push(node) }
      knight.location = queue.shift
    end

    def trace_path (node)

      count = 0
      path = []
      until node.parent === nil
      node = node.parent
      end
      path
      
    end  
      
    
    
 
  end  


  puts traverse(vertex_1, vertex_2)
  #display each vertex from first location to second location

end  


knight_moves 




=begin

while knight.queue.length > 0 do

    puts "loop"
      knight.queue.map { |value| if value != "level marker" 
      puts value.data 
    end}

      if knight.queue[0] === "level marker"
        puts "block 1"
        count += 1
        knight.queue.shift
      elsif knight.queue[0] === target
        puts "block 2"
        knight.path.push(node_2.data)
        knight.path.map { |space| 
          puts space }   
        return  
      else
        puts "block 3"
        #knight.queue[0].parent = knight.location
        knight.queue[0].adjacent.map { |vertex| if !knight.checked.include?(vertex) 
        knight.queue.push(vertex) 
      end}
        knight.queue.shift
        knight.location = knight.queue[0]
      end  

    end  

=end


