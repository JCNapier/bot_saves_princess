require './lib/gameplay' 

RSpec.describe GamePlay do 
  context 'initialize' do 
    let(:game) {GamePlay.new(3, "bl")}

    it 'exists' do 
      expect(game).to be_a(GamePlay)
    end

    it 'has a grid size attribute' do 
      expect(game.grid_size).to eq(3)
    end

    it 'has a princess corner location' do 
      expect(game.princess_corner).to eq("bl")
    end
  end

  context 'build_grid' do
    let(:game) {GamePlay.new(3, "bl")}

    it 'can build a grid' do
      expect(game.build_grid).to eq(["---", "-m-", "---"])
    end

    it 'can place the princess in a corner' do
      expect(game.place_princess).to eq(["---", "-m-", "p--"])
    end
  end
end