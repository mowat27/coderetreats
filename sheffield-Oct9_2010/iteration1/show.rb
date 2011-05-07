class Foo
  def initialize(bar)
    @bar = bar
  end
  
  def bar
    @bar
  end
end

fa = [Foo.new("a"), Foo.new("b")]

fa.each do |f|
  puts f.bar
end