# frozen_string_literal: true

require_relative 'piece'

# This class represents the pawn, its color, and its possible moves.
clasd Pawn < Piece
  include Pieces

  def symbol
    pawn(color)
  end

  def possible_moves(board)
    # actual position for possible_moves
    # validste move 
  end
end