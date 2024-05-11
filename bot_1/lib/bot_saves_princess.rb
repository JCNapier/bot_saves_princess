require_relative 'grid'

class BotSavesPrincess
  attr_reader :grid

  def initialize(grid)
    @grid              = grid.grid
    @bot_location      = grid.bot_location
    @princess_location = grid.princess_location
  end

  # returns two index array representing the difference between the shared indexes
  def determine_character_location_differences
    column_movement = @bot_location[0] - @princess_location[0]
    row_movement = @bot_location[1] - @princess_location[1]

    [column_movement, row_movement]
  end

  # returns array of strings representing the bot movement to reach the princess
  def display_path_to_princess
    moves = []

    column_movement, row_movement = determine_character_location_differences
    
    if column_movement.negative?; moves << (["DOWN"]) else moves << (["UP"]) end
    if row_movement.negative?; moves << (["RIGHT"]) else moves << (["LEFT"]) end
    
    moves.flatten
  end
end