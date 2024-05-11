require './lib/grid' 

RSpec.describe do 
  context 'initialize' do
    let(:grid) {Grid.new(5, 2, 3)}
    
    it 'exists' do 
      expect(grid).to be_a(Grid)
    end

    it 'has a size attribute' do 
      expect(grid.size).to eq(5)
    end

    it 'has a row attribute' do 
      expect(grid.row).to eq(2)
    end

    it 'has a column attribute' do 
      expect(grid.column).to eq(3)
    end
  end

  context 'build_grid' do 
    let(:grid_1) {Grid.new(5, 2, 3)}
    let(:grid_2) {Grid.new(7, 2, 3)}

    it 'can build a 5x5 grid' do 
      expect(grid_1.build_grid).to eq(["-----", "-----","-----", "-----", "-----"])
    end

    it 'can build a 7x7 grid' do
      expect(grid_2.build_grid).to eq(["-------", "-------","-------", "-------", "-------", "-------", "-------"])
    end
  end

  context 'place_bot' do 
    let(:grid) {Grid.new(5, 2, 3)}

    it 'can place the bot' do 
      new_grid = grid.build_grid

      expect(grid.place_bot(new_grid)).to eq(["-----", "-----","---m-", "-----", "-----"])
    end
  end

  context 'place_princess' do 
    let(:grid) {GRid.new(5, 2, 3)}

    it 'can place the princess' do
      new_grid = grid.build_grid 
      grid_with_bot = grid.place_bot(new_grid)
      grid_with_princess = grid.place_princess(grid_with_bot)

      expect(grid_with_princess).length.to eq(5)
      expect(grid_with_princess.join.include?("p")).to be(true)
      expect(grid_with_princess.join.include?("m")).to be(true)
    end
  end
end