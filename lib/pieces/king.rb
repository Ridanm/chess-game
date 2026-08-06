# frozen_string_literal: true

require_relative 'pieces_module'

# Class that implements the king piece with its movements and castling
class King < Piece
  attr_reader :king_moved

  include Pieces

  def initialize(color, position)
    super
  end

  def symbol
    king(color)
  end

  def valid_moves(board)
    moves = []
    # Moves: one square in any direction
    # Validate that the piece is not in check
    # Include castling if valid
  end

  def castling(board)
    # Check castling conditions:
    # - King and rook have not moved
    # - Squares between king and rook are empty
    # - King is not in check
    # - King does not pass through an attacked square
    # - King does not end up in check
  end
end