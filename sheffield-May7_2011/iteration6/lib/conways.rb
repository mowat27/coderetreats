class Grid
  COL, ROW = 1, 0
  
  def initialize(*states)
    @grid = [[0,0,0],[0,0,0],[0,0,0]]
    states.each {|live_cell| give_birth_to_cell(live_cell[COL], live_cell[ROW])}
  end

  def print
    @grid
  end
  
  private
  def give_birth_to_cell(col, row)
    @grid[col][row] = 1
  end
end