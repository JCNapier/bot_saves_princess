require './lib/bot_saves_princess'

RSpec.describe BotSavesPrincess do 
  context 'initialize' do 
    let(:bsp) {BotSavesPrincess.new(3, ["---", "-m-", "p--"])}

    it 'exists' do
      expect(bsp).to be_a(BotSavesPrincess)
    end

    it 'has a size attribute' do
      expect(bsp.size).to eq(3)
    end

    it 'has a grid attribute' do
      expect(bsp.grid).to eq(["---", "-m-", "p--"])
    end
  end

  context 'determine_character_location_differences' do
    let(:bsp_1) {BotSavesPrincess.new(3, ["---", "-m-", "p--"])}
    let(:bsp_2) {BotSavesPrincess.new(3, ["--p", "-m-", "---"])}
    let(:bsp_3) {BotSavesPrincess.new(5, ["-p---", "-----","--m--", "-----", "-----"])}

    it 'can determine the differences between the character locations 3x3 grid' do
      expect(bsp_1.determine_character_location_differences).to eq([-1, 1])
      expect(bsp_2.determine_character_location_differences).to eq([1, -1])
    end

    it 'can determine the differences between the character locations 3x3 grid' do
      expect(bsp_3.determine_character_location_differences).to eq([2, 1])
    end
  end

  context 'path to princess' do
    let(:bsp_1) {BotSavesPrincess.new(3, ["---", "-m-", "p--"])}
    let(:bsp_2) {BotSavesPrincess.new(3, ["--p", "-m-", "---"])}
    let(:bsp_3) {BotSavesPrincess.new(5, ["-p---", "-----","--m--", "-----", "-----"])}

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