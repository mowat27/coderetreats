class Counter
  def initialize(source, *line_evaluators)
    @source, @line_evaluators = source, line_evaluators
  end
  
  def count_lines
    @source.find_all do |line| 
      evaluate(line) 
    end.length    
  end
  
  private
  def evaluate(line)
    result = true
    line_evaluators.each do |ev|
      result = result && ev.evaluate(line)
    end
    result
  end
end

class LineEvaluator
  def evaluate(line)
    false
  end
end

class CommentEvaluator < LineEvaluator
  def evaluate(line)
    !starts_with_hash(line)
  end
  
  def starts_with_hash(line)
    line =~ /^#/
  end
end

describe "counting lines in a string" do
  def count_lines(source)
    c = Counter.new(source, CommentEvaluator.new)
    c.count_lines
  end
  
  def starts_with_hash(line)
    line =~ /^#/
  end
  
  def evaluate_rules(line, *rules)
    result = true
    rules.each do |rule|
      result = result && rule.call(line)
    end
    result
  end
  
  before :each do
    @rules = [
      Proc.new{!starts_with_hash(line)}
    ]
  end
  
  context "with no lines in the source" do
    it "returns no lines" do
      count_lines("") {|line| evaluate_rules(line, *@rules)}.should == 0
    end
  end
  
  context "with no excluded lines" do
    it "returns a straight line count" do
      source = <<-EOS
line1
line2
line3      
EOS
      count_lines(source) {|line|evaluate_rules(line, *@rules)}.should == 3
    end
  end
  
  context "with a commented line" do
    it "excludes the commented line from the hash" do
      source = <<-EOS
# line1
line2
line3      
EOS
      count_lines(source) {|line| evaluate_rules(line, *@rules)}.should == 2      
    end
  end
end