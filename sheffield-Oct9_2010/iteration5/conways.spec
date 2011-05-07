class LiveCell
  def self.lives?(live_neighbours)
    if(live_neighbours > 3)
      false
    elsif(live_neighbours == 1)
      false
    else 
      true
    end
  end  
end
  

describe "A live cell" do
  it "dies when it has more than 3 live neighbours" do
    LiveCell.lives?(4).should == false
  end  
  
  it "dies when it has 1 live neighbour" do
     LiveCell.lives?(1).should == false
  end
  
  it "lives when it has 2 live neighbours" do
    LiveCell.lives?(2).should == true
  end

  it "lives when it has 3 live neighbours" do
    LiveCell.lives?(3).should == true
  end
end

describe "A dead cell" do
  def lives?(live_neighbours)
    true
  end
  
  it "lives when it has 3 neighbours" do
    lives?(3).should == true
  end
end