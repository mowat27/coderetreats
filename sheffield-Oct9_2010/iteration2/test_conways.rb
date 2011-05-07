require 'test/unit'
require 'conways'

include Test::Unit

class KernalTest < TestCase
  def test_reading_false
    viewport = [
      [true,false,false],
      [true,false,false],
      [true,false,false],            
    ]
    kernal = Kernal.new(viewport)
    
    assert_equal(false, kernal.centre)
  end
  
  def test_reading_true
    viewport = [
      [true,false,false],
      [true,true,false],
      [true,false,false],            
    ]
    kernal = Kernal.new(viewport)
  
    assert_equal(true, kernal.centre)
  end
end