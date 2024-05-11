require './lib/grid'
require './lib/bot_saves_princess'

class GamePlay 
  def play
    puts "Welcome to Bot Saves Princess" 
    sleep(2)
    puts "Please enter an odd number between 3 and 100 to determine the grid size"
    size = gets.chomp.to_i

    until (size.odd?) && (size >= 3 && size < 100) do 
      puts "Not a valid selection. Please try again"
      size = gets.chomp.to_i
    end

    grid = build_grid(size)
    grid_with_bot = place_bot_in_center(grid, size)

    puts "Now you must chose which of the four corners to place the princess in."
    puts "To chose the top left corner type: 'tl'"
    puts "To chose the top right corner type: 'tr'"
    puts "To chose the bottom left corner type: 'bl'"
    puts "To chose the bottom right corner type: 'br'"

    princess_position = gets.chomp.to_s.downcase

    until ['tl', 'tr', 'bl', 'br'].include?(princess_position)
      puts "Not a valid selection. Please try again."
      princess_position = gets.chomp.to_s.downcase
    end

    finished_grid = place_princess(grid_with_bot, princess_position)

    new_grid_object = Grid.new(size, finished_grid)
    new_game = BotSavesPrincess.new(new_grid_object)

    puts "Here is the game board"
    puts finished_grid
    sleep(2)
    puts "The path to save the princess is..."
    sleep(2)
    puts "#{new_game.display_path_to_princess}"
  end

  # builds a grid with no bot or princess
  def build_grid(size)
    grid = ((("-" * size) + "\n") * size).split("\n")
    grid
  end

  # places bot at the center of the grid
  def place_bot_in_center(grid, size)
    center_row = grid[(size-1)/2, (size-1)/2]
    center_row[0][(size-1)/2] = "m"
    grid
  end

  # places the princess in one of the four corners of the grid
  def place_princess(grid, position)
    if position == "tl"
      grid[0][0] = "p"
    elsif position == "tr"
      grid[0][-1] = "p"
    elsif position == "bl"
      grid[-1][0] = "p"
    else 
      grid[-1][-1] = "p"
    end
    grid
  end
end