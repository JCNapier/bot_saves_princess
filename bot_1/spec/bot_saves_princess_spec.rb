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

  context 'locate_character_location' do
    let(:bsp) {BotSavesPrincess.new(3, ["---", "-m-", "p--"])}

    it 'can locate the princess' do
      expect(bsp.locate_character_location("p")).to eq([2, 0])
    end

    it 'can locate the bot' do
      expect(bsp.locate_character_location("m")).to eq([1, 1])
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