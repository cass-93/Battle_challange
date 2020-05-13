require 'sinatra'

set :session_secret, "Can I see this?"

set :session_oldnews, "This should also be visible"

get '/' do
  "hello!"
end


get '/secret' do
  "Can I see this?"
end

get '/oldnews' do
  "This should also be visible"
end

get '/latest' do
  "This should be the newest info"
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @names = params[:name]
  erb :index
end


# get '/random-cat' do
#     @names = ["Amigo", "Chan", "Viking"].sample
#     erb (:index)
# end
