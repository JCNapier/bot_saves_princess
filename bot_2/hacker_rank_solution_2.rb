class Grid
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
    
    if column_movement.negative?; moves << (["DOWN"]) else moves << (["UP"]) end
    if row_movement.negative?; moves << (["RIGHT"]) else moves << (["LEFT"]) end
    
    moves.flatten
  end

  def next_move
    moves = display_path_to_princess
    if @bot_location[0] == @princess_location[0]; moves[1] else moves[0] end
  end
end 

def nextMove(n,r,c,grid)
  grid = Grid.new(n, r, c, grid)
  game = BotSavesPrincess.new(grid)
  puts game.next_move
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)