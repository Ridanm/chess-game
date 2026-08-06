# frozen_string_literal: true

# With this class we implement which piece and where its position is on the board, finding its possible next move.
class Square
  attr_accesor :position, :piece

  def initialize(position)
    @position = position # [0, 0]
    @piece = nil
  end

  def occupied?
    !@piece.nil?
  end

  def empty
    @piece.nil?
  end

  def clone
    # clone the state of the square to simulate movement.
  end
end