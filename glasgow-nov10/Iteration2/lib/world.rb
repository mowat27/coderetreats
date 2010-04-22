# To change this template, choose Tools | Templates
# and open the template in the editor.

class World
  def initialize(*live_cells)
    @maximum_x = live_cells.max {|a,b| a[0] <=> b[0]}[0]
    @maximum_y = live_cells.max {|a,b| a[1] <=> b[1]}[1]
    @grid = Array.new(@maximum_y + 1) do |index|
      Array.new(@maximum_x + 1, 0)
    end
    live_cells.each do |live_cell_position|
      puts "setting #{}"
      @grid[live_cell_position[1]][live_cell_position[0]] = 1
    end
    puts @grid.inspect

  end
  def cell_at(x, y)
   @grid[y][x]
  end
  def x_maximum_index
    @maximum_x
  end
  def y_maximum_index
    @maximum_y
  end
end
