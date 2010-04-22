#g = TileGame.new(2,3,4,1,:x, 6)
#
#puts g
#
#while(!g.valid?) do
# g.move!
#end
#
#def move
#  random_valid_move
#
#  foreach
#    move
#    score the move
#    pick highest
#end

class TileGame
  def initialize(*initial_sequence)
    @sequence = initial_sequence
  end

  def solved?
    @sequence.sort == @sequence
  end

  def right!
    @sequence = [1,2,3,4,5,6,7,8,99]

  end
end