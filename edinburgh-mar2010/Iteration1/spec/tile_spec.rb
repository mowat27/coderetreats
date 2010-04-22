# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'tile'

#describe Board do
#  before :each do
#    @head_tile = Tile.new(8)
#    @board = Board.new(@head_tile)
#  end
#
#  it "can push a tile" do
#    new_tile = Tile.new(6)
#    @board.push(new_tile)
#    new_tile.previous.should == @head_tile
#  end
#end


describe Tile do
  before(:each) do
    @tile = Tile.new(1)
  end

  it "has a nil previous" do
    @tile.previous.should == nil
  end

  it "can accept a new next tile" do
    next_tile = Tile.new(2)
    @tile.set_next(next_tile)
    @tile.next.should == next_tile
  end

  it "can set it's previous tile" do
    previous_tile = Tile.new(0)
    @tile.set_previous()
  end
end

