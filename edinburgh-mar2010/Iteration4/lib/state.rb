class BoardTraversal
  attr_reader :current, :moves_registered, :unprocessed_queue, :solved_states
  def initialize(target_board)
    @current = target_board
    @moves_registered, @unprocessed_queue = [], []
    @solved_states = {}
  end
end


