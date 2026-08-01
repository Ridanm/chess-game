# frozen_string_literal: true

require_relative '../lib/game_settings'

RSpec.describe Player do
  let(:player_one) { Player.new('Jhon', 'black') }
  
  describe 'player' do
    it 'if we give it a name' do
      expect(player_one.name).to eq('Jhon')
    end

    it 'which color did he choose?' do
      expect(player_one.piece_color).to eq('black')
    end
  end
end