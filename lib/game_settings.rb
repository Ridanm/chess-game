# frozen_string_literal: true

require_relative 'player'

# This class is responsible for configuring the players' names and the colors of the pieces they will play with.
class GameSettings
  include Info
  
  def enter_name
    print Info.show('enter_name')
    name = gets.chomp.capitalize.strip.squeeze(' ')
    enter_name if name.empty?
    name
  end

  def enter_piece_color
    print Info.show('select piece color')
    color = gets.chomp.to_i
    return color if color.between?(1, 2)
    enter_piece_color
  end

  def create_player
    name = enter_name
    color = enter_piece_color
    if player_color == 1
      'white'
    elsif player_color == 2
      'black'
    end
    Player.new(name, color)
  end
end