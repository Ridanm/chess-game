# frozen_string_literal: true

require_relative 'board'
# This class implements the game in its development.
class Game
  attr_reader :board, :player_one, :player_two
  
  def initialize(player_one, player_two)
    @board = Board.new
    @player_one = player_one
    @player_two = player_two
  end

  def play

  end
end