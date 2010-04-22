# To change this template, choose Tools | Templates
# and open the template in the editor.

class Tile
  attr_reader :next
  
  def initialize(tile_number)
    @tile_number = tile_number
  end

  def previous
    nil
  end

  def set_next(next_tile)
    @next = next_tile
  end
end

#class Board
#
#end
