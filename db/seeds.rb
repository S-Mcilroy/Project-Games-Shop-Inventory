require_relative( "../models/game.rb" )
require_relative( "../models/publisher.rb" )
require_relative( "../models/sale.rb" )
require("pry")

Sale.delete_all
Game.delete_all
Publisher.delete_all


publisher1 = Publisher.new({
  "name" => "Sony",
  "trading" => "Yes",
  "logo" => ""
  })

publisher2 = Publisher.new({
  "name" => "Activision",
  "trading" => "Yes",
  "logo" => ""
  })


publisher1.save
publisher2.save

game1 = Game.new({
  "name" => "Bloodborne",
  "genre" => "Action",
  "buy_price" => "10.50",
  "sell_price" => "25.00",
  "stock" => "5",
  "publisher_id" => publisher1.id,
  "logo" => ""
  })

game2 = Game.new({
  "name" => "Call of Duty: Modern Warfare",
  "genre" => "Action",
  "buy_price" => "20.00",
  "sell_price" => "32.00",
  "stock" => "8",
  "publisher_id" => publisher2.id,
  "logo" => "",
  })

game1.save
game2.save

sale1 = Sale.new({
  "transaction_date" => "2020/01/30",
  "game_id" => game1.id
  })

sale1.save



binding.pry
nil
