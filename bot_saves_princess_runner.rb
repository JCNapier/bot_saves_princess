require './lib/bot_1/grid'
require './lib/bot_1/bot_saves_princess'
require './lib/bot_1/game_play'

def start
  new_game = GamePlay.new
  new_game.play
end

start