# frozen_string_literal: true

require_relative 'player'

# This class is responsible for configuring the players' names and the colors of the pieces they will play with.
class GameSettings
  include Info
  
  def enter_name
    print Info.show('enter name')
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
    if color == 1
      color = 'white'
    elsif color == 2
      color = 'black'
    end
    Player.new(name, color)
  end
end