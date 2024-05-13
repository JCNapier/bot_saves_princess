require './lib/bot_2/grid_2'
require './lib/bot_2/bot_saves_princess_2'
require './lib/bot_2/game_play_2'

def start
  new_game = GamePlay2.new
  new_game.play
end

start