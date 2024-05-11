require './lib/grid'
require './lib/bot_saves_princess'
require './lib/game_play'

def start
  new_game = GamePlay.new
  new_game.play
end

start