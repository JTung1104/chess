require_relative 'board'
require_relative 'player'

class Game
  attr_reader :board, :display, :current_player, :players

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @players = {
      white: Player.new(:white, @display),
      black: Player.new(:black, @display)
    }
    @current_player = :white
  end

  def play
    while true
      
    end
  end

  private

  def swap_turn!
    @current_player = (current_player == :white) ? :black : :white
  end
end

if __FILE__ == $PROGRAM_NAME
  Game.new.play
end
