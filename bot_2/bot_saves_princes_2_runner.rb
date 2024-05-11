require './lib/grid_2'
require './lib/bot_saves_princess_2'
require './lib/game_play_2'

def start
  new_game = GamePlay.new
  new_game.play
end

start