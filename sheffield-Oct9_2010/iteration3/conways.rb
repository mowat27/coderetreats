class Viewport
  def initialize(x_extent, y_extent)
    
  end
  
  def window(window_num)
    ComputationWindow.new(0 + window_num,0)
  end
end

class ComputationWindow
  def initialize(origin_x, origin_y)
    @origin_x, @origin_y = origin_x, origin_y
  end
  
  def origin
    [@origin_x, @origin_y]
  end
end