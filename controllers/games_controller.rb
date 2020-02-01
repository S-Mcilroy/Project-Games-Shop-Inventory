require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('../models/game.rb')
also_reload( '../models/*' )

get '/games' do
  @games = Game.all
  erb( :"games/index" )
end

get '/games/new' do
  @publishers = Publisher.all
  erb(:"games/new")
end

post '/games' do
  game = Game.new(params)
  game.save
  redirect to ('/games')
end

post '/games/:id/delete' do
  game = Game.find(params[:id])
  game.delete()
  redirect to('/games')
end

get '/games/:id/update' do
  @publishers = Publisher.all
  @games = Game.find(params[:id])
  erb(:"games/update")
end

post '/games/:id' do
  @game = Game.new(params)
  @game.update
  redirect to('/games')
end
