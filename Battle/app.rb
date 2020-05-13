require 'sinatra'

class Battle < Sinatra::Base

  get "/" do
    "Hello World"
  end

  get "/player" do
    "yo"
    erb :player
  end

  run! if app_file == $0
end
