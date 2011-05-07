require 'conways'

describe Cell do
  context "#live?" do
    it "returns true when initialized as live" do
      cell = Cell.new(:state => :live)
      cell.live?.should be_true
    end

    it "returns false when initialized as dead" do
      cell = Cell.new(:state => :dead)
      cell.live?.should be_false
    end
  end
  
  context "when live with 0 live neighbours" do
    it "has a next state of dead" do
      cell = Cell.new(:state => :live, :neighbours => 0)
      cell.next_state.should == false
    end
  end
  
  context "when live with 2 neighbours" do
    it "has a next state of live" do
      cell = Cell.new(:state => :live, :neighbours => 2)
      cell.next_state.should == true
    end
  end
end