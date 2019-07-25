require "bundler"
Bundler.require
require_relative '/lib/app/broad'
require_relative '/lib/app/braodcase'
require_relative '/lib/app/game'
require_relative '/lib/app/player'

class Application
  def perform
  
player
braodcase
broad
game
  end

end

Application.new.perform