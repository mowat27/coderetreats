# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'rules_engine'

describe CellCalculation do
  context "a live cell" do
    before(:each) do
      @rules_engine = CellCalculation.new(:alive)
    end
    context "cell with one live neighbour" do
      it "dies" do
        @rules_engine.new_state(CellCalculation::TOP_LEFT).should == :alive
      end
    end
    context "test with 2 live neighbours" do
      it "does not die" do
        @rules_engine.new_state(
          CellCalculation::TOP_LEFT,CellCalculation::TOP_MIDDLE).should == :dead
      end
    end

    context "when the middle cell is passed" do
      it "ignores the middle cell" do
        @rules_engine.new_state(
          CellCalculation::TOP_LEFT,CellCalculation::TARGET_CELL).should == :alive
      end
    end
  end

  context "a dead cell" do
    it "is possible to create one" do
      calc = CellCalculation.new(:dead)
      calc.nil?.should == false
    end
  end
end

