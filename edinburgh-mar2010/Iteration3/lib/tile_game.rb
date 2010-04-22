# To change this template, choose Tools | Templates
# and open the template in the editor.

class TileGame
  def initialize(*initial_sequence)
    @sequence = initial_sequence
  end

  def valid?(direction)
    result = true
    if(left_edge? && direction == :left)
      result = false
    end
    if(bottom_edge? && direction == :down)
      result = false
    end
    if(top_edge? && direction == :up)
      result = false
    end
    if(right_edge? && direction == :right)
      result =false
    end
    result
  end

  def left_edge?
    [0,3,6].include? current_position
  end

  def right_edge?
    [2,5,8].include? current_position
  end

  def top_edge?
    current_position < 3
  end

  def bottom_edge?
    current_position > 5
  end

  def current_position
    @sequence.index(99)
  end
end
