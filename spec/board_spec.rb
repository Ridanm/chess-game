# frozen_string_literal: true

require_relative '../lib/board'

RSpec.describe Board do
  subject(:board) { described_class.new }
 
  describe '#display' do
    it 'print the empty board with rank numbers and letters' do
      expected_output = <<~BOARD
          a b c d e f g h 
        8 . . . . . . . . 8
        7 . . . . . . . . 7
        6 . . . . . . . . 6
        5 . . . . . . . . 5
        4 . . . . . . . . 4
        3 . . . . . . . . 3
        2 . . . . . . . . 2
        1 . . . . . . . . 1
          a b c d e f g h 
      BOARD
      expect{ board.display }.to output(expected_output).to_stdout
    end
  end
end