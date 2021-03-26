#for visualisation 
matrix = 

[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 0, 0]



class Knight 
  attr_accessor :adjacent, :location, :previous

  ADJACENCIES = [ [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [-2, -1], [2, -1] ]

  @@checked = []

  def initialize (location, previous)
    @location = location
    @adjacent = []
    @previous = previous
  end

  def adjacent

    ADJACENCIES.map { |element| [element[0] + @location[0], element[1] + @location[1]] }
    .reject { |element| element[0] > 7 || element[0] < 0 || element[1] > 7 || element[1] < 0 }
    .reject { |element| @@checked.include?(element) }
    .map { |element| Knight.new(element, self) }

  end  

end

def trace_path (node, node_2)

    puts "tracing path..."
    sleep(1)
    count = 0
    path = []

    until node.previous === nil do
      node = node.previous
      path.push(node)
      count += 1
      
    end  

    location = path.map { |value| value.location }
    puts "you made it in #{count} moves - your path is #{location.reverse}"
       
  end   


def knight_moves 

  puts "enter x board coordinate for starting place..."
  x_start = gets.chomp.to_i 
  sleep(1)
  puts "...enter y board coordinate for starting place..."
  y_start = gets.chomp.to_i
  sleep(1)
  puts "now enter x coordinate for the endpoint..."
  x_end = gets.chomp.to_i
  sleep(1)
  puts "...and the y coordinate for the endpoint..."
  y_end = gets.chomp.to_i

  node_1 = [x_start, y_start]
  node_2 = [x_end, y_end]

  queue = []
  target = node_2
  knight = Knight.new(node_1, nil)

  while knight.location != target do
    knight.adjacent.map { |value| queue.push(value) }
    knight = queue.shift
  end
   
  trace_path(queue[0], node_2)

end


knight_moves


