require "./lib/bot_1/grid"

RSpec.describe Grid do
  context 'initialize' do 
    let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}

    it 'exists' do
      expect(grid).to be_a(Grid)
    end
    
    it 'has a size attribute' do
      expect(grid.size).to eq(3)
    end

    it 'has a grid attribute' do
      expect(grid.grid).to eq(["---", "-m-", "p--"])
    end

    it 'has a bot location attribute' do 
      expect(grid.bot_location).to eq([1, 1])
    end

    it 'has a princess location attribute' do 
      expect(grid.princess_location).to eq([2, 0])
    end
  end

  context 'locate_character_location' do
    let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}
    let(:grid_2) {Grid.new(5, ["-p---", "-----","--m--", "-----", "-----"])}

    it 'can locate the princess 3x3 grid' do
      expect(grid.locate_character_location("p")).to eq([2, 0])
    end

    it 'can locate the bot 3x3 grid' do
      expect(grid.locate_character_location("m")).to eq([1, 1])
    end

    it 'can locate the princess 5x5 grid' do
      expect(grid_2.locate_character_location("p")).to eq([0, 1])
    end

    it 'can locate the bot 5x5 grid' do
      expect(grid_2.locate_character_location("m")).to eq([2, 2])
    end
  end
end