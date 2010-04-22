# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'tile_game'

describe TileGame do
  context "when solved" do
    before(:each) do
      @game = TileGame.new(1,2,3,4,5,6,7,8,99)
    end

    it "is solved" do
      @game.solved?.should == true
    end
  end

  context "when not solved" do
    before :each do
      @game = TileGame.new(8,7,6,5,4,3,2,1,99)
    end

    it "is not solved" do
      @game.solved?.should == false
    end

    context "when only right moves will solve the puzzle" do
      it "is solved by moving once right" do
        @game = TileGame.new(1,2,3,4,5,6,7,99,8)
        @game.right!
        @game.solved?.should == true
      end

      it "is solved by moving twice right" do
        @game = TileGame.new(1,2,3,4,5,6,99,7,8)
        @game.right!
        @game.solved?.should == false
      end

    end
  end
end

