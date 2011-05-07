class Game
  def initialize(game_class)
    @game = game_class.new
  end
  
  def tick!
    @game.tick!
  end
end