# frozen_string_literal: true

# This class implements the game pieces. The pieces created by the methods in this case are white.
module Pieces
  def king(color)
    {'white' => "\u2654",
    'black' => "\u265A"}[color]
  end

  def queen(color)
    {'white' => "\u2655",
    'black' => "\u265B"}[color]
  end

  def rook(color)
    {'white' => "\u2656",
    'black' => "\u265C"}[color]
  end

  def bishop(color)
    {'white' => "\u2657",
    'black' => "\u265D"}[color]
  end

  def knight(color)
    {'white' => "\u2658",
    'black' => "\u265E"}[color]
  end

  def pawn(color)
    {'white' => "\u2659",
    'black' => "\u265F"}[color]
  end
end