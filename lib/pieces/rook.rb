# frozen_string_literal: true

require_relative 'pieces_module'

# Class that implements the rook piece with its movements and castling
class Rook < Piece
  attr_reader :rook_moved

  def initialize(color, position)
    super
  end

  def symbol
    rook(color)
  end

  def possible_moves(board)
    
  end
end