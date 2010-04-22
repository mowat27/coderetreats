# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'world_entities'

class TestWorldWithOneCell < Test::Unit::TestCase
  def test_world_yields_2_cells
    world = World.new([1,1], [1,2])
    result = []
    world.each do |cell|
      result << cell
    end
    expected = [Cell.new(1,1), Cell.new(1,2)]
    assert_equal(expected, result)
  end

end

class TestCell < Test::Unit::TestCase
  def test_cell_has_a_position
    cell = Cell.new(1,2)
    assert_equal(1, cell.x)
    assert_equal(2, cell.y)
  end

  def test_cell_equals
    cell1 = Cell.new(1,1)
    cell2 = Cell.new(1,2)
    cell3 = Cell.new(1,2)
    assert_equal(cell2, cell3)
    assert_not_equal(cell2, cell1)
    assert_not_equal(nil, cell1)
    assert_not_equal(cell1, nil)
  end
end
