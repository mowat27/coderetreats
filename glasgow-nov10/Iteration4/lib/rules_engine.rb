class CellCalculation
  TOP_LEFT = 1
  TOP_MIDDLE = 2
  TARGET_CELL = 5

  def initialize(current_state)
    
  end

  def new_state(*live_neighbours)
    live_neighbours = live_neighbours.find_all{|id| id != TARGET_CELL}
    if(live_neighbours.length == 2)
      return :dead
    end
    return :alive
  end
end
