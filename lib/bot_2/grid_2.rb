class Grid2
  attr_reader :size, 
              :bot_location, 
              :grid,
              :princess_location

  def initialize(size, bot_row, bot_column, grid)
    @size              = size
    @bot_location      = [bot_row, bot_column]
    @grid              = grid
    @princess_location = locate_character_location("p")
  end

  # iterates over each row of the grid checking for the desired character
  # returns two index array representing the vertical and horizontal location of character
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