def display(iteration, *grid)
  puts "iteration #{iteration}:"
  grid.each do |line|
    print "|"
    line.each do |cell|
      print cell == 1 ? "X" : " "
    end
    print "|\n"
  end
end

def count(current_grid, x, y)
  4
end

def lives?(state, num_neighbours)
  if(state == 1 and (num_neighbours == 2 or num_neighbours == 3) )
    1
  elsif(state == 0 and num_neighbours == 3)
    1
  else
    0
  end
end

def tick(current_grid)
  # Assume bounded
  result = []
  current_grid.each_with_index do |row, y|
    new_row = []
    row.each_with_index do |cell, x|
      if(lives?(cell, count(current_grid, x, y)))
        new_row << 1
      else
        new_row << 0
      end
    end   
    result << new_row
  end
  result
end

grid = [
  [0,1,0,0,0],
  [0,1,0,1,0],
  [0,1,0,0,0],
  [0,1,1,0,0],
  [0,1,0,1,0]
]

#grids << tick(grids[0]) 
#grids.each_with_index {|grid, index| display(index, *grid)}

i=1
4.times do
  display(i, *grid)
  grid = tick(grid)
  i += 1
end