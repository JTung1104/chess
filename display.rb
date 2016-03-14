require 'colorize'
require_relative 'cursorable'
require_relative 'board.rb'

class Display
  include Cursorable

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end

  def render
    system("clear")

    i, j = 0, 0
    bg_color = ""

    while i < 8
      while j < 8
        bg_color = (i + j).even? ? :black : :blue
        bg_color = :yellow if [i, j] == @cursor_pos
        print "#{@board[[i, j]]} ".colorize(:background => bg_color)

        j += 1
      end
      puts
      j = 0
      i += 1
    end
  end
end
