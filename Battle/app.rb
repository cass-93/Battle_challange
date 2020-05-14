require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  # enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.opponent)
    erb :attack
  end

  post "/switch_turns" do
    $game.switch_turns
    redirect "/play"
  end

  run! if app_file == $0
end
