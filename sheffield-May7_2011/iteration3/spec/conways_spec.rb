require 'conways'

describe Game do
  it "creates a grid and sends it a tick" do
    grid_class = mock("grid class")
    grid = mock("a grid")
    
    grid_class.should_receive(:new).and_return(grid)
    grid.should_receive(:tick!)
    
    game = Game.new(grid_class)
    game.tick!
  end
  
  
end