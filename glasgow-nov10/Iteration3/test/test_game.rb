# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'game'

class TestStaticGames < Test::Unit::TestCase
  def setup
    @game = Game.new
  end

  def test_new_game_is_all_empty
    expected = <<EOS
0000
0000
0000
0000
EOS
    assert_equal expected, @game.display
  end

  def test_setup_of_block
    expected = <<EOS
0000
0XX0
0XX0
0000
EOS
    @game.set 1,1
    @game.set 1,2
    @game.set 2,1
    @game.set 2,2
    assert_equal expected, @game.display
  end
  
  def test_setup_of_triangle
    expected = <<EOS
0000
0X00
0XX0
0000
EOS
    @game.set 1,1
    @game.set 1,2
    @game.set 2,2
    assert_equal expected, @game.display
  end
end

class TestEmptyWorld < Test::Unit::TestCase
  def setup
    @world = World.new
    @all_dead = [
      [:dead,:dead,:dead,:dead],
      [:dead,:dead,:dead,:dead],
      [:dead,:dead,:dead,:dead],
      [:dead,:dead,:dead,:dead]
    ]
  end

  def test_to_a_returns_array_of_falses
    assert_equal(@all_dead, @world.to_a)
  end

end
