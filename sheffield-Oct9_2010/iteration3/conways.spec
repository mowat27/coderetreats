require 'conways'

describe Viewport do
  context "managing a 3x3 computation window" do
    before do
      @viewport = Viewport.new(10,10)
    end
    it "calculates the initial window" do      
      @viewport.window(0).origin.should == [0,0]
    end
    
    it "calculates the second window" do      
      @viewport.window(1).origin.should == [1,0]
    end    

    it "calculates the first window on the second row" do      
      @viewport.window(10).origin.should == [0,1]
    end    
    
  end
end