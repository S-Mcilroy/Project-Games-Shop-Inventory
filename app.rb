require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/games_controller')
require_relative('controllers/publishers_controller')
require_relative('controllers/sales_controller')
require_relative('controllers/inventory_controller')
require_relative('./models/game.rb')

get '/' do
  @games = Game.all
  erb( :index )
end
