class BotSavesPrincess
  attr_reader :size, 
              :grid

  def initialize(size, grid)
    @size = size
    @grid = grid
  end

  def locate_character_location(character)
    location = []

    @grid.each_with_index do |element, index|
      if element.include?(character)
        location << index
        location << (element.chars.find_index(character))
      end
    end
    location
  end
end