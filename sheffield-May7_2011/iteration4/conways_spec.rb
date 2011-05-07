describe "a position" do
  class ::Object
    def in?(collection)
      collection.include? self
    end
  end
  
  def next_state(opts)
    if(opts[:neighbours].in? 2..3)
      :alive
    elsif(opts[:neighbours] == 1)
      :dead
    end
  end

  context "with 2 live neighbours" do
    it "is alive in the next iteration" do
      next_state(:neighbours => 2).should == :alive
    end
  end

  context "with 3 live neighbours" do
    it "is alive in the next iteration" do
      next_state(:neighbours => 3).should == :alive
    end
  end
  
  
  context "with one live neighbour" do
    it "is dead in the next iteration" do
      next_state(:neighbours => 1).should == :dead
    end
  end
  
  
end