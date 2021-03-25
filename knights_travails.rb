class Node 
  attr_accessor :data, :adjacent, :location, :previous

  TRANSFORMATIONS = [ [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [-2, -1], [2, -1] ]

  def initialize (location, previous)
    @location = location
    @adjacent = []
    @checked = []
    @previous = nil
  end

  def adjacent
    TRANSFORMATIONS.map { |element| [element[0] + @location[0], element[1] + @location[1]] }
    .map { |element| element.delete_if { |element| element[0] > 7 || element[0] < 1 || element[1] > 7 || element[1] < 1 } }
    .map { |element| element.delete_if { |element| @checked.include?(element) } }.map { |element| @adjacent.push(Node.new(element, self)) }
  end  

  
end


def knight_moves (node_1, node_2)

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

  queue = []
  target = node_2
  knight = Node.new(node_1, nil)

  while knight.location != target do
    knight.adjacent.map { |value| queue.push(value) }
    knight.location = queue[0]
    queue.shift
  end
 
  def trace_path (node)

    count = 0
    path = []
    until node.previous === nil
    node = node.previous
    count += 1
    path.push(node)
    end

    return "you made it in #{count} moves - your path is #{path}"
      
  end    

end


knight_moves([0, 0], [7, 7])


