require './lib/game_play_2' 

RSpec.describe GamePlay do
  context 'build_grid' do
    let(:game) {GamePlay.new}

    it 'can build a 3x3 grid' do
      expect(game.build_grid(3)).to eq(["---", "---", "---"])
    end

    it 'can build a 5x5 grid' do
      expect(game.build_grid(5)).to eq(["-----", "-----", "-----", "-----", "-----"])
    end
  end

  context 'place_bot_in_grid' do
    let(:game) {GamePlay.new}

    it 'can place the bot in the 5x5 grid' do
      expect(game.place_bot_in_grid(["-----", "-----", "-----", "-----", "-----"], 1, 4)).to eq(["-----", "----m", "-----", "-----", "-----"])
    end
  end

  context 'place_princess_in_grid' do
    let(:game) {GamePlay.new}

    it 'can place the princess in the grid' do
      expect(game.place_princess_in_grid(["-----", "----m", "-----", "-----", "-----"], 2, 2)).to eq(["-----", "----m", "--p--", "-----", "-----"])
    end
  end
end