# frozen_string_literal: true

require_relative 'piece'
require_relative 'board'

# This class represents the pawn, its color, and its possible moves.
clasd Pawn < Piece
  attr_reader :en_passant_target

  def initialize(color, position)
    super
    @en_passant_target = nil
  end

  include Pieces

  def symbol
    pawn(color)
  end

  def valid_moves(board)
    moves = []
    # Move forward (1 or 2 squares if not already moved)
    # Capture diagonally
    # Capture en passant
    # Promotion upon reaching the last row
  end

  def move_to(new_position board)
    # actual position for possible_moves
    # validste move 
  end

  def promotion
    # When a pawn reaches the enemy's last rank (rank 8 for white, rank 1 for black).
    # piece to be transformed (Queen, Rook, Bishop or Knight)
    (@color == 'white' && @position[0] == 7) || (@color == 'black' && position[0] == 0)
  end
end