class BotSavesPrincess
  attr_reader :size, 
              :grid

  def initialize(size, grid)
    @size              = size
    @grid              = grid
    @bot_location      = locate_character_location("m")
    @princess_location = locate_character_location("p")
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

  def display_path_to_princess
    moves = []

    column_movement = @bot_location[0] - @princess_location[0]
    row_movement = @bot_location[1] - @princess_location[1]
    
    if column_movement.negative?
      moves << (["DOWN"] * column_movement.abs)
    else 
      moves << (["UP"] * column_movement)
    end

    if row_movement.negative?
      moves << (["RIGHT"] * row_movement.abs)
    else
      moves << (["LEFT"] * row_movement)
    end
    moves.flatten
  end
end