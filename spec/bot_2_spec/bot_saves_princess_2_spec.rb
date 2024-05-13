require './lib/bot_2/grid_2'
require './lib/bot_2/bot_saves_princess_2'

RSpec.describe BotSavesPrincess2 do 
  context 'initialize' do
    let(:grid) {Grid2.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:bsp) {BotSavesPrincess2.new(grid)}

    it 'exists' do
      expect(bsp).to be_a(BotSavesPrincess2)
    end

    it 'has a grid attribute' do
      expect(bsp.grid).to eq(["-----", "-----","p--m-", "-----", "-----"])
    end
  end

  context 'determine_character_location_differences' do
    let(:grid_1) {Grid2.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:grid_2) {Grid2.new(5, 2, 3, ["-------", "-------","---m---", "-------", "---p---", "-------", "-------"])}
    let(:bsp_1) {BotSavesPrincess2.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess2.new(grid_2)}


    it 'can determine the differences between the character locations 5x5 grid' do
      expect(bsp_1.determine_character_location_differences).to eq([0, 3])
    end

    it 'can determine the differences between the character locations 7x7 grid' do
      expect(bsp_2.determine_character_location_differences).to eq([-2, 0])
    end
  end

  context 'display_path_to_princess' do
    let(:grid_1) {Grid2.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:grid_2) {Grid2.new(5, 2, 3, ["-------", "-------","---m---", "-------", "---p---", "-------", "-------"])}
    let(:bsp_1) {BotSavesPrincess2.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess2.new(grid_2)}

    it 'can return first vertical and horizontal move for 5x5 grid' do
      expect(bsp_1.display_path_to_princess).to eq(["UP", "LEFT"])
    end

    it 'can return first vertical and horizontal move for 7x7 grid' do
      expect(bsp_2.display_path_to_princess).to eq(["DOWN", "LEFT"])
    end
  end 

    context 'next_move' do
    let(:grid_1) {Grid2.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:grid_2) {Grid2.new(5, 2, 3, ["-------", "-------","---m---", "-------", "---p---", "-------", "-------"])}
    let(:bsp_1) {BotSavesPrincess2.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess2.new(grid_2)}

    it 'can return first vertical and horizontal move for 5x5 grid' do
      expect(bsp_1.next_move).to eq("LEFT")
    end

    it 'can return first vertical and horizontal move for 7x7 grid' do
      expect(bsp_2.next_move).to eq("DOWN")
    end
  end 
end