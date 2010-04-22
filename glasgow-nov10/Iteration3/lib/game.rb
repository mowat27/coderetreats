# To change this template, choose Tools | Templates
# and open the template in the editor.

class Game
  def initialize
    @current_display = <<EOS
0000
0000
0000
0000
EOS
  end
  def display
    @current_display
  end
  def set(x,y)
    lines = @current_display.split("\n")
    lines[y][x] = "X"
    @current_display = lines.join("\n") + "\n"
  end
end