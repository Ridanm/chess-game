# frozen_string_literal: true

require_relative './pieces/pieces_module'

# This class implements the board that will represent
class Board
  attr_reader :board, :number_of_white_moves, :number_of_black_moves, :move_history, :position_history

  include Pieces
  
  def initialize
    @board = Array.new(8){ Array.new(8, '.') }
    @number_of_white_moves = 0
    @number_of_black_moves = 0
    @move_history = []
    @position_history = {}
    @captured_pieces = [ white: [], black: [] ]
  end

  def display
    puts '  a b c d e f g h '
    @board.each_with_index do |row, index|
      rank = 8 - index
      formatted_row = row.map { |cell| cell.empty? ? '.' : cell }.join(' ')
      puts "#{rank} #{formatted_row} #{rank}"
    end
    puts '  a b c d e f g h '
  end

  def setup_board
    # place all the pieces in their initial position
    # white pieces row 0, 1
    # black pieces row 6, 7
  end

  def position(piece_color, position)
    
  end
end