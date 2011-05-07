class RuleEngine
  def next_states_by_neighbour
    result = {}
    result.default = :dead
    (2..3).inject(result) do |memo, num| 
      memo[num] = :alive
      memo
    end
  end
  
  def next_state_for_cell_with(property)
    next_states_by_neighbour[property[:neighbours]]      
  end
end

class Cell
  attr_reader :position
  def initialize(x,y)
    @position = [x,y]
  end
end

class Grid
  def neighbours_for(x,y)
    0
  end
end