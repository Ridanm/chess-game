# frozen_string_literal: true

require_relative 'pieces_module'
# This is a base class for the pieces which will share color and position.
class Piece
  attr_reader :color
  attr_accesor :position

  include Pieces

  def initialize(color, position)
    @color = color
    @position = position
  end

  def symbol
    raise NotImplementedError, 'Implement #symbol in a subclass'
  end

  def to_s
    symbol
  end

  def possible_moves(board)
    raise NotImplementedError, 'Implrment #possible_moves in a subclass'
  end
end