# frozen_string_literal: true

require_relative 'pieces_module'
# This is a base class for the pieces which will share color and position.
class Piece
  attr_reader :color, :has_moved
  attr_accesor :position

  include Pieces

  def initialize(color, position)
    @color = color
    @position = position
    @has_moved = false
  end

  def symbol
    raise NotImplementedError, 'Implement #symbol in a subclass'
  end

  def to_s
    symbol
  end

  def valid_moves(board)
    raise NotImplementedError, 'Implement #valid_moves in a subclase'
  end

  def move_to(new_position, board)
    raise NotImplementedError, 'Implrment #move_to in a subclass'
    @has_moved = true
    @position = new_position
  end

  def opponent_color
    @color == 'white' ? 'black' : 'white'
  end

  def clone
    # to simulate movements
  end
end