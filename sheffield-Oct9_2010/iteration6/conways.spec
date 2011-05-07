describe "a live cell" do  
  def lives?(num_neighbours)
    num_neighbours > 1 and num_neighbours < 4
  end
  
  it "dies when it has less than 2 live neighbours" do
    lives?(1).should be_false
  end
  it "dies when it has more than 3 live neighbours" do
    lives?(4).should be_false
  end
  it "lives when it has 2 or 3 live neighbours" do
    lives?(2).should == true
    lives?(3).should == true
  end
end

describe "a dead cell" do
  def lives?(num_neighbours)
    num_neighbours == 3
  end
  
  it "lives when it has 3 live neighbours" do
    lives?(3).should == true
  end
  
  it "remains dead when it does not have 3 live neighbours" do
    lives?(2).should == false
    lives?(4).should == false    
  end
end

describe "counting the number of neighbours" do
  def count_live_cells(*neighbours)
    neighbours.find_all {|cell| cell == 1}.length
  end
  
  context "when one cell is alive" do
    it "finds 1 live neighbour" do
      count_live_cells(1,0).should == 1
    end
  end
  
  context "when 2 cells are alive" do
    it "finds 2 live neighbours" do
      count_live_cells(1,0,1).should == 2
    end
  end

  context "when no cells are alive" do
    it "finds 0 live neighbours" do
      count_live_cells(0,0,0).should == 0
    end
  end
end

describe "a 3x3 grid" do
  def neighbours_of(*grid)
    result = grid.clone
    result.delete_at 4
    result
  end
  
  it "finds the state of the neighbours of the middle cell" do
    expected =   [1,0,0,0,0,1,1,0]
    neighbours_of(1,0,0,0,1,0,1,1,0).should == expected
  end
end

describe "a game board" do
  
end












