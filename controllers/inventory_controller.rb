require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/game.rb')
require_relative('../models/publisher.rb')
also_reload( '../models/*' )