# frozen_string_literal: true

require_relative 'pieces'

# This class implements the board that will represent
class Board
  attr_reader :board

  include Pieces
  
  def initialize
    @board = Array.new(8){ Array.new(8, '.') }
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
end