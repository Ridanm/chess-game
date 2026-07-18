# frozen_string_literal: true

require_relative 'pieces'
require_relative 'info_module'

# This class implements what is necessary for each player.
class Player
  attr_reader :name, :piece_color
  
  include Pieces
  include Info

  def initialize(name, piece_color)
    @name = name
    @piece_color = piece_color
  end
end