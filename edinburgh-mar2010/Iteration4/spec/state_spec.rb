# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'state'

describe BoardTraversal do
  context "starting with the solved state" do
    before :each do
      @board = mock("a game board")
      @board.stub!(:moves).and_return([:left,:up])
      @board_traversal = BoardTraversal.new(@board)
    end

    it "has the board as its current state" do
      @board_traversal.current.should == @board
    end

    it "has no moves registered" do
      @board_traversal.moves_registered.should == []
    end

    it "should have an empty unprocessed queue" do
      @board_traversal.unprocessed_queue.should == []
    end

    it "has an empty hash of remembered moves" do
       @board_traversal.solved_states.should == {}
    end
  end
end


