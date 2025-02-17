class ApplicationController < Sinatra::Base

  # Add this line to set the Content-Type header for all responses
  set :default_content_type, 'application/json'

  get '/' do
    { message: "Hello world" }.to_json
  end

  get '/games' do
    # get all the games from the database
    games = Game.all
    # return a JSON response with an array of all the game data
    games.to_json
  end
  
  #you could sort the games by title instead of the default sort order:
 #get '/games' do
    #games = Game.all.order(:title)
    #games.to_json
  #end

  #Or just return the first 10 games:
   #get '/games' do
    #games = Game.all.order(:title).limit(10)
    #games.to_json
  #end


end
