require './lib/grid_2'
require './lib/bot_saves_princess_2'

class GamePlay 
  def play
    puts "Welcome to Bot Saves Princess 2" 
    sleep(2)
    
    puts "Please enter a number greater than or equal to 1 and less than 100 to determine the grid size"
    size = gets.chomp.to_i
    until (size.positive?) && (size >= 1 && size < 100) do 
      puts "Not a valid selection. Please try again"
      size = gets.chomp.to_i
    end

    puts "Please enter which row number you want the Bot in with the lowest number being the top and highest number being the bottom"
    range = Range.new(0, size)
    bot_row = gets.chomp.to_i 
    until (range.include?(bot_row) && bot_row < size) do 
      puts "Not a valid selection. Please try again"
      bot_row = gets.chomp.to_i
    end 

    puts "Please enter which column number you want the Bot in with the lowest number being the far left and highest number being the far right"
    range = Range.new(0, size)
    bot_column = gets.chomp.to_i 
    until (range.include?(bot_column) && bot_column < size) do 
      puts "Not a valid selection. Please try again"
      bot_column = gets.chomp.to_i
    end

    puts "Now you must chose where to place the Princess, and it cannot be in the same place as the Bot."
    puts "Please enter which row number you want the Princess in with the lowest number being the top and highest number being the bottom"
    range = Range.new(0, size)
    princess_row = gets.chomp.to_i 
    until (range.include?(princess_row) && princess_row < size) do 
      puts "Not a valid selection. Please try again"
      princess_row = gets.chomp.to_i
    end 

    puts "Please enter which column number you want the Princess in with the lowest number being the far left and highest number being the far right"
    range = Range.new(0, size)
    princess_column = gets.chomp.to_i 
    until (range.include?(princess_column) && [princess_row, princess_column] != [bot_row, bot_column] && princess_row < size) do 
      puts "Not a valid selection. Please try again"
      princess_column = gets.chomp.to_i
    end

    grid = build_grid(size)
    grid_with_bot = place_bot_in_grid(grid, bot_row, bot_column)
    finished_grid = place_princess_in_grid(grid_with_bot, princess_row, princess_column)

    new_grid_object = Grid.new(size, bot_row, bot_column, finished_grid)
    new_game = BotSavesPrincess.new(new_grid_object)

    puts "Here is the game board"
    puts finished_grid
    sleep(2)
    puts "The next move save the princess is..."
    sleep(2)
    puts "#{new_game.next_move}"
  end

  # builds a grid with no bot or princess
  def build_grid(size)
    grid = ((("-" * size) + "\n") * size).split("\n")
    grid
  end

  def place_bot_in_grid(grid, row, column)
    row = grid[row]
    row[column] = "m"
    grid
  end

  def place_princess_in_grid(grid, row, column)
    new_row = grid[row]
    new_row[column] = "p"
    grid
  end
end