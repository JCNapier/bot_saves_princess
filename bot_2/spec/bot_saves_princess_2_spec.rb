require './lib/grid_2'
require './lib/bot_saves_princess_2'

RSpec.describe BotSavesPrincess do 
  context 'initialize' do
    let(:grid) {Grid.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:bsp) {BotSavesPrincess.new(grid)}

    it 'exists' do
      expect(bsp).to be_a(BotSavesPrincess)
    end

    it 'has a grid attribute' do
      expect(bsp.grid).to eq(["-----", "-----","p--m-", "-----", "-----"])
    end
  end

  context 'determine_character_location_differences' do
    let(:grid_1) {Grid.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:grid_2) {Grid.new(5, 2, 3, ["-------", "-------","---m---", "-------", "---p---", "-------", "-------"])}
    let(:bsp_1) {BotSavesPrincess.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess.new(grid_2)}


    it 'can determine the differences between the character locations 5x5 grid' do
      expect(bsp_1.determine_character_location_differences).to eq([0, 3])
    end

    it 'can determine the differences between the character locations 7x7 grid' do
      expect(bsp_2.determine_character_location_differences).to eq([-2, 0])
    end
  end

  context 'display_path_to_princess' do
    let(:grid_1) {Grid.new(5, 2, 3, ["-----", "-----","p--m-", "-----", "-----"])}
    let(:grid_2) {Grid.new(5, 2, 3, ["-------", "-------","---m---", "-------", "---p---", "-------", "-------"])}
    let(:bsp_1) {BotSavesPrincess.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess.new(grid_2)}

    it 'can return first vertical and horizontal move for 5x5 grid' do
      expect(bsp_1.display_path_to_princess).to eq(["UP", "LEFT"])
    end

    it 'can return first vertical and horizontal move for 7x7 grid' do
      expect(bsp_2.display_path_to_princess).to eq(["DOWN", "LEFT"])
    end
  end  
end