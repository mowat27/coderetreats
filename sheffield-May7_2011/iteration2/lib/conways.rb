class Cell
  def initialize(opts)
    @live = opts[:state] == :live
  end
  
  def live?
    @live
  end
  
  def next_state
    false
  end
end