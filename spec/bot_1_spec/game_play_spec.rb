require 'spec_helper'
require './lib/bot_1/game_play'  

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

  context 'place_bot_in_center' do
    let(:game) {GamePlay.new}

    it 'can place the bot in the center 3x3' do
      expect(game.place_bot_in_center(["---", "---", "---"], 3)).to eq(["---", "-m-", "---"])
    end

    it 'can place the bot in the center 5x5' do
      expect(game.place_bot_in_center(["-----", "-----", "-----", "-----", "-----"], 5)).to eq(["-----", "-----", "--m--", "-----", "-----"])
    end
  end

  context 'place_princess' do
    let(:game) {GamePlay.new}

    it 'can place the princess in the top left corner' do
      expect(game.place_princess(["---", "---", "---"], "tl")).to eq(["p--", "---", "---"])
    end
    it 'can place the princess in the top right corner' do
      expect(game.place_princess(["---", "---", "---"], "tr")).to eq(["--p", "---", "---"])
    end
    it 'can place the princess in the bottom left corner' do
      expect(game.place_princess(["---", "---", "---"], "bl")).to eq(["---", "---", "p--"])
    end
    it 'can place the princess in the bottom right corner' do
      expect(game.place_princess(["---", "---", "---"], "br")).to eq(["---", "---", "--p"])
    end
  end
end