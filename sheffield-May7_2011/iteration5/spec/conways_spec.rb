require "conways"

describe RuleEngine do
  it "calculates a cell as being alive when it has 2 live neighbours" do
    engine = RuleEngine.new
    engine.next_state_for_cell_with(:neighbours => 2).should == :alive
  end

  it "calculates a cell as being alive when it has 3 live neighbours" do
    engine = RuleEngine.new
    engine.next_state_for_cell_with(:neighbours => 3).should == :alive
  end
    
  dead_ones = (0..5).find_all {|num| not (2..3).include? num}
  dead_ones.each do |num|
    it "calculates a cell as being dead when it has #{num} live neighbours" do
      engine = RuleEngine.new
      engine.next_state_for_cell_with(:neighbours => num).should == :dead      
    end
  end
end

describe Cell do
  it "should have a position" do
    cell = Cell.new(0,0)
    cell.position.should == [0,0]
  end  
end

describe Grid do
  context "when empty" do
    it "calculates no neighbours for cell at [1,1]" do
      Grid.new.neighbours_for(1,1).should == 0
    end
  end
end