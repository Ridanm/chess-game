# frozen_string_literal: true

require '../lib/game_settings'
require '../lib/player'

RSpec.describe GameSettings do
  let(:player_one) { Player.new('Mary', 'white') }
  
  describe '#enter_name' do
    it 'if the player enters their name' do
      expect(subject).to receive(:gets).and_return("joe\n")
      expect(subject.enter_name).to eq('Joe')
    end

    it 'if the name is empty' do
      allow(subject).to receive(:gets).and_return('', 'alex')
      expect(subject).to receive(:enter_name).and_call_original.exactly(2).times
      subject.enter_name
    end
  end

  describe '#enter_piece_color' do
    context 'when the player select white' do
      before do
        allow(subject).to receive(:gets).and_return('1')
        expect(Info).to receive(:show).with('select piece color')
      end
      
      it 'return 1' do
        expect(subject.enter_piece_color).to eq(1)
      end
    end

    context 'when the player select black' do
      before do
        allow(subject).to receive(:gets).and_return('2')
        expect(Info).to receive(:show)
      end

      it 'return 2' do
        expect(subject.enter_piece_color).to eq(2)
      end
    end

    context 'when the player select a number other than 1 or 2' do
      before do
        allow(subject).to receive(:gets).and_return('3', '2')
        expect(Info).to receive(:show)
      end

      it 'the method is called again' do
        expect(subject).to receive(:enter_piece_color).and_call_original.exactly(2).times
        expect(Info).to receive(:show)
        expect(subject.enter_piece_color).to eq(2)
      end
    end
  end

  describe '#create player' do
    before do
      allow(subject).to receive(:create_player).and_return(player_one)
    end
    
    it 'if the data is correct' do
      expect(subject.create_player).to be_a_kind_of(Player)
    end
  end
end