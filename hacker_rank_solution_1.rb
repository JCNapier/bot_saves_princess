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

class BotSavesPrincess
  attr_reader :grid

  def initialize(grid)
    @grid              = grid.grid
    @bot_location      = grid.bot_location
    @princess_location = grid.princess_location
  end

  def determine_character_location_differences
    column_movement = @bot_location[0] - @princess_location[0]
    row_movement = @bot_location[1] - @princess_location[1]

    [column_movement, row_movement]
  end

  def display_path_to_princess
    moves = []

    column_movement, row_movement = determine_character_location_differences
    
    if column_movement.negative?; moves << (["DOWN"] * column_movement.abs) else moves << (["UP"] * column_movement) end
    if row_movement.negative?; moves << (["RIGHT"] * row_movement.abs) else moves << (["LEFT"] * row_movement) end
    
    moves.flatten
  end
end 

def displayPathtoPrincess(n, grid)
  grid = Grid.new(n, grid)
  game = BotSavesPrincess.new(grid)
  game.display_path_to_princess.each do |round|
    print round.concat("\n")
  end
end

# takes the number from hacker rank
n = gets.to_i

# builds an array with n number of elements (nil)
grid = Array.new(n)

# builds a grid, replacing each element with an element from hacker rank
n.times.each do |row|
  grid[row] = gets.strip
end

displayPathtoPrincess(n, grid)