# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'tile_game'

describe TileGame do
  context "when the empty space is at the bottom left" do
    before(:each) do
      @tile_game = TileGame.new(1,2,3,4,5,6,99,7,8)
    end
    it "knows that right is a valid move" do
      @tile_game.valid?(:right).should == true
    end
    it "knows that up is a valid move" do
      @tile_game.valid?(:up).should == true
    end
    it "knows that left is not a valid move" do
      @tile_game.valid?(:left).should == false
    end
    it "knows that down is not valid move" do
      @tile_game.valid?(:down).should == false
    end
  end

  context "when the empty space is at the top right" do
    before(:each) do
      @tile_game = TileGame.new(1,2,99,3,4,5,6,7,8)
    end
    it "knows that right is not a valid move" do
      @tile_game.valid?(:right).should == false
    end
    it "knows that up is not a valid move" do
      @tile_game.valid?(:up).should == false
    end
    it "knows that left is a valid move" do
      @tile_game.valid?(:left).should == true
    end
    it "knows that down is a valid move" do
      @tile_game.valid?(:down).should == true
    end
  end

  context "when the empty space is in the middle" do
    before(:each) do
      @tile_game = TileGame.new(1,2,3,4,99,5,6,7,8)
    end
    it "knows that right is a valid move" do
      @tile_game.valid?(:right).should == true
    end
    it "knows that up is a valid move" do
      @tile_game.valid?(:up).should == true
    end
    it "knows that left is a valid move" do
      @tile_game.valid?(:left).should == true
    end
    it "knows that down is a valid move" do
      @tile_game.valid?(:down).should == true
    end
  end
 end

