# frozen_string_literal: true

require_relative '../lib/game'

RSpec.describe Game do
  let(:player_one){ instance_double('Player', name: 'Joe', color: 'white') }
  let(:player_two){ instance_double('Player', name: 'Ron', color: 'black') }
  subject(:game) { described_class.new(player_one, player_two) }
  
  describe '#initialize' do
    it 'the board is initialized' do
      expect(game.board).to be_a_kind_of(Board)
    end

    it 'the player_one name' do
      expect(game.player_one.name).to eq('Joe')
    end

    it 'the player_two color' do
      expect(game.player_two.color).to eq('black')
    end
  end
end