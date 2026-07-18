# frozen_string_literal: true

require_relative 'player'

# This class is responsible for configuring the players' names and the colors of the pieces they will play with.
class GameSettings
  include Info
  
  def enter_name
    print Info.show('enter_name')
    name = gets.chomp.capitalize.strip.squeeze(' ')
    enter_name if name.empty?
  end

  def enter_piece_color

  end

  def create_player

  end
end