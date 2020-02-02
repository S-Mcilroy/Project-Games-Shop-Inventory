require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/game.rb')
require_relative('../models/publisher.rb')
also_reload( '../models/*' )

get '/inventory' do
  @games = Game.all
  @publishers = Publisher.all
  erb( :"inventory/index" )
end

get '/inventory/filter/publisher' do
  @games = Game.all
  @filter = Publisher.find(params[:id])
  erb(:"inventory/filter/publisher")
end

get '/inventory/filter/genre' do
  @games = Game.all
  @filter = params[:genre]
  erb(:"inventory/filter/genre")
end
