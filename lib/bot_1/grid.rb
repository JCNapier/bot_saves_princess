class Grid
  attr_reader :size, 
              :grid,
              :bot_location,
              :princess_location


  def initialize(size, grid)
    @size              = size
    @grid              = grid
    @bot_location      = locate_character_location("m")
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