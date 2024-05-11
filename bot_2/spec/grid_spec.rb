require './lib/grid' 

RSpec.describe do 
  context 'initialize' do
    let(:grid) {Grid.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    
    it 'exists' do 
      expect(grid).to be_a(Grid)
    end

    it 'has a size attribute' do 
      expect(grid.size).to eq(5)
    end

    it 'has a bot_location attribute' do 
      expect(grid.bot_location).to eq([2, 3])
    end

    it 'has a grid attribute' do 
      expect(grid.grid).to eq(["-----", "-----","p--m-", "-----", "-----"])
    end

    it 'has a princess_location attribute' do 
      expect(grid.princess_location).to eq([2, 0])
    end
  end

  context 'locate_character_location' do
    let(:grid) {Grid.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}

    it 'can locate the princess 5x5 grid' do
      expect(grid.locate_character_location("p")).to eq([2, 0])
    end
  end
end