require './lib/grid'
require './lib/bot_saves_princess'

RSpec.describe BotSavesPrincess do 
  context 'initialize' do
    let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}
    let(:bsp) {BotSavesPrincess.new(grid)}

    it 'exists' do
      expect(bsp).to be_a(BotSavesPrincess)
    end

    it 'has a grid attribute' do
      expect(bsp.grid).to eq(["---", "-m-", "p--"])
    end
  end

  context 'determine_character_location_differences' do
    let(:grid_1) {Grid.new(3, ["---", "-m-", "p--"])}
    let(:grid_2) {Grid.new(3, ["--p", "-m-", "---"])}
    let(:grid_3) {Grid.new(5, ["-p---", "-----","--m--", "-----", "-----"])}
    let(:bsp_1) {BotSavesPrincess.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess.new(grid_2)}
    let(:bsp_3) {BotSavesPrincess.new(grid_3)}

    it 'can determine the differences between the character locations 3x3 grid' do
      expect(bsp_1.determine_character_location_differences).to eq([-1, 1])
      expect(bsp_2.determine_character_location_differences).to eq([1, -1])
    end

    it 'can determine the differences between the character locations 3x3 grid' do
      expect(bsp_3.determine_character_location_differences).to eq([2, 1])
    end
  end

  context 'path to princess' do
    let(:grid_1) {Grid.new(3, ["---", "-m-", "p--"])}
    let(:grid_2) {Grid.new(3, ["--p", "-m-", "---"])}
    let(:grid_3) {Grid.new(5, ["-p---", "-----","--m--", "-----", "-----"])}
    let(:bsp_1) {BotSavesPrincess.new(grid_1)}
    let(:bsp_2) {BotSavesPrincess.new(grid_2)}
    let(:bsp_3) {BotSavesPrincess.new(grid_3)}

    it 'can decipher path to princess 3x3 grid' do
      expect(bsp_1.display_path_to_princess).to eq(["DOWN", "LEFT"])
      expect(bsp_2.display_path_to_princess).to eq(["UP", "RIGHT"])
      expect(bsp_3.display_path_to_princess).to eq(["UP", "UP", "LEFT"])
    end

    it 'can decipher path to princess 5x5 grid' do
      expect(bsp_3.display_path_to_princess).to eq(["UP", "UP", "LEFT"])
    end
  end
end