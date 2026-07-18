# frozen_string_literal: true

require_relative '../lib/pieces'
require_relative '../lib/player'

RSpec.describe Pieces do
  let(:player) { Player.new }
  
  context 'when call a king' do
    it 'if he is black' do
      expect(player.king('black')).to eq("\u265A")
    end

    it 'if he is white' do
      expect(player.king('white')).to eq("\u2654")
    end
  end

  context 'when call a queen' do
    it 'if she is white' do
      expect(player.queen('white')).to eq("\u2655")
    end

    it 'if she is black' do
      expect(player.queen('black')).to eq("\u265B")
    end
  end

  describe 'when call a rook' do
    it "if it's white" do
      expect(player.rook('white')).to eq("\u2656")
    end

    it "if it's black" do
      expect(player.rook('black')).to eq("\u265C")
    end
  end

  describe 'when call a bishop' do
    it 'when it is white' do
      expect(player.bishop('white')).to eq("\u2657")
    end

    it 'when it is black' do
      expect(player.bishop('black')).to eq("\u265D")
    end
  end

  describe 'when is a knight' do
    it 'white' do
      expect(player.knight('white')).to eq("\u2658")
    end

    it 'black' do
      expect(player.knight('black')).to eq("\u265E")
    end
  end

  describe '#pawn' do
    it 'when is white' do
      expect(player.pawn('white')).to eq("\u2659")
    end

    it 'when is black' do
      expect(player.pawn('black')).to eq("\u265F")
    end
  end
end