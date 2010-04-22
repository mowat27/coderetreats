# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'world'

class TestWorldWithTwoElements < Test::Unit::TestCase
  def setup
    @world = World.new([1,0])
  end
  def test_one_live_one_dead
    assert_equal(0, @world.cell_at(0,0))
    assert_equal(1, @world.cell_at(1,0))
  end
  def test_maximums
    assert_equal(1, @world.x_maximum_index)
    assert_equal(0, @world.y_maximum_index)
  end
end
