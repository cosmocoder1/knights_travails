class Node 
  attr_accessor :data, :adjacent

  transformations = [ [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [-2, -1], [2, -1] ]

  def initialize (position, previous)
    @position = position
    @adjacent = []
    @checked = []
    @previous = nil
  end
  
end

  def adjacent
    transformations.map { |node| node[0] + position[0], node[1] + position[1] }
    .map { |node| node.delete_if { |node| node[0] > 7 || node[0] < 1 || node[1] > 7 || node[1] < 1 } }
    .map { |node| node.delete_if { |node| @checked.include?(node) } }
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
  x_end = 7
  y_end = 7

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
      knight.location.adjacent.map { |node| unless queue.include?(node) 
      queue.push(node) 
      end}
      knight.checked.push(queue[0])
      knight.location = queue.shift
    end

    return knight.checked.map { |value| value.data }

  end  

=begin  
  def trace_path (node)

    count = 0
    path = []
    until node.parent === nil
    node = node.parent
    count += 1
    path.push(node)
    end

    return "you made it in #{count} moves - your path is #{path}"
      
  end  
=end    

  puts traverse(vertex_1, vertex_2)
  #display each vertex from first location to second location

end  


knight_moves 

