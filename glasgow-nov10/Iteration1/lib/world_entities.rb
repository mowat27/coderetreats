class World
  def initialize(*positions)
    @positions = positions
  end
  def each
    @positions.each {|position| yield Cell.new(position[0], position[1])}
  end
end

class Cell
  attr_reader :x, :y
  def initialize(x,y)
    @x, @y = x, y
  end
  def ==(other)
    return false if other.nil?
    x == other.x && y == other.y
  end
end
