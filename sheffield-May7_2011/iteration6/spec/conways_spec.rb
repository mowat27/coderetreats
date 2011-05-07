require 'conways'

describe "a grid" do  
  grids = {
   []            => [[0,0,0],[0,0,0],[0,0,0]], 
   [[1,1]]       => [[0,0,0],[0,1,0],[0,0,0]],
   [[1,0]]       => [[0,1,0],[0,0,0],[0,0,0]],
   [[0,1]]       => [[0,0,0],[1,0,0],[0,0,0]],
   [[0,2]]       => [[0,0,0],[0,0,0],[1,0,0]],
   [[0,1],[1,0]] => [[0,1,0],[1,0,0],[0,0,0]]      
  }
  grids.each do |loc,printed_form|
    context "with live cell(s) at #{loc.inspect}" do
      before :each do 
        @grid = Grid.new(*loc)
      end
      it "displays it's contents as a 2 dimensional array containing live cells as '1'" do
        @grid.print.should == printed_form
      end
    end
  end
end