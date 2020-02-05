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
  "logo" => "https://datatransmission.co/radio/wp-content/uploads/sites/2/2019/09/sony-logo.png"
  })

publisher2 = Publisher.new({
  "name" => "Activision",
  "trading" => "Yes",
  "logo" => "https://lh3.googleusercontent.com/proxy/PaNiLNhU6FxTlC0MJ12terXxCXkJgZM8Pv26gwLms251upEU8F5taI2KVyVhg_5-h-z5B1Wbh1gBiP1thTLPBfZZHPMTX4EncTucMKaKRj-UsL749c3LnYstYcNR_EU"
  })

publisher3 = Publisher.new({
  "name" => "Nintendo",
  "trading" => "Yes",
  "logo" => "https://images.nintendolife.com/c9e51688f744b/nintendo-logo.original.jpg"
  })

publisher4 = Publisher.new({
  "name" => "Capcom",
  "trading" => "Yes",
  "logo" => "https://cdn.freebiesupply.com/logos/large/2x/capcom-logo-png-transparent.png"
  })

publisher5 = Publisher.new({
  "name" => "Ubisoft",
  "trading" => "Yes",
  "logo" => "https://www.logo-designer.co/wp-content/uploads/2017/06/2017-new-ubisoft-logo-2.png"
  })

publisher6 = Publisher.new({
  "name" => "Bethesda Softworks",
  "trading" => "Yes",
  "logo" => "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Bethesda_Game_Studios_logo.svg/1200px-Bethesda_Game_Studios_logo.svg.png"
  })

publisher1.save
publisher2.save
publisher3.save
publisher4.save
publisher5.save
publisher6.save


game1 = Game.new({
  "name" => "Bloodborne",
  "genre" => "Action",
  "buy_price" => "10.50",
  "sell_price" => "25.00",
  "stock" => "5",
  "publisher_id" => publisher1.id,
  "logo" => "https://hyperpix.net/wp-content/uploads/2019/09/bloodborne-logo-font-download.jpg"
  })

game2 = Game.new({
  "name" => "Call of Duty: Modern Warfare",
  "genre" => "Action",
  "buy_price" => "20.00",
  "sell_price" => "32.00",
  "stock" => "8",
  "publisher_id" => publisher2.id,
  "logo" => "https://portforward.com/call-of-duty-modern-warfare/call-of-duty-modern-warfare-logo.png",
  })

game3 = Game.new({
  "name" => "Pokemon: Sword and Shield",
  "genre" => "Adventure",
  "buy_price" => "28.00",
  "sell_price" => "45.00",
  "stock" => "54",
  "publisher_id" => publisher3.id,
  "logo" => "https://www.clipartkey.com/mpngs/m/121-1214291_pokmon-sword-and-shield-logo-pokemon.png",
  })

game4 = Game.new({
  "name" => "Resident Evil 2",
  "genre" => "Action",
  "buy_price" => "24.00",
  "sell_price" => "41.00",
  "stock" => "34",
  "publisher_id" => publisher4.id,
  "logo" => "https://i.pinimg.com/originals/f1/36/72/f13672f5a552223996ec4ccec7c6131c.jpg",
  })

game5 = Game.new({
  "name" => "ANNO 1800",
  "genre" => "Strategy",
  "buy_price" => "10.00",
  "sell_price" => "15.00",
  "stock" => "0",
  "publisher_id" => publisher5.id,
  "logo" => "https://invisioncommunity.co.uk/wp-content/uploads/2017/08/anno-1800.png",
  })

game6 = Game.new({
  "name" => "Rage 2",
  "genre" => "Action",
  "buy_price" => "30.00",
  "sell_price" => "38.00",
  "stock" => "14",
  "publisher_id" => publisher6.id,
  "logo" => "https://i.pinimg.com/originals/79/60/54/7960549099686be5ac781ffc1964e2f4.png",
  })

game7 = Game.new({
  "name" => "Sekiro: Shadows Die Twice",
  "genre" => "Adventure",
  "buy_price" => "23.00",
  "sell_price" => "41.00",
  "stock" => "30",
  "publisher_id" => publisher1.id,
  "logo" => "https://media.playstation.com/is/image/SCEA/sekiro-shadows-die-twice-logo-02-ps4-us-11jul18?$native_t$",
  })

game8 = Game.new({
  "name" => "Destiny 2: Shadowkeep",
  "genre" => "Action",
  "buy_price" => "20.00",
  "sell_price" => "32.00",
  "stock" => "22",
  "publisher_id" => publisher2.id,
  "logo" => "https://cdn.shopify.com/s/files/1/0417/0233/products/Box_Art_1000x1000_e47468ec-b93d-45ed-bd49-60189e729706.png?v=1559944671",
  })

game9 = Game.new({
  "name" => "Super Mario Maker 2",
  "genre" => "Puzzle",
  "buy_price" => "29.00",
  "sell_price" => "38.00",
  "stock" => "10",
  "publisher_id" => publisher3.id,
  "logo" => "https://cdn.neow.in/news/images/uploaded/2019/02/1550096355_screenshot_(7).jpg",
  })

game10 = Game.new({
  "name" => "Monster Hunter World: Iceborne",
  "genre" => "Adventure",
  "buy_price" => "19.00",
  "sell_price" => "25.00",
  "stock" => "5",
  "publisher_id" => publisher4.id,
  "logo" => "https://www.monsterhunterworld.com/images/top/thumb/img_iceborne.jpg",
  })

game11 = Game.new({
  "name" => "Tom Clancys The Divison 2",
  "genre" => "Action",
  "buy_price" => "30.00",
  "sell_price" => "38.00",
  "stock" => "18",
  "publisher_id" => publisher5.id,
  "logo" => "https://img.favpng.com/21/18/19/tom-clancy-s-the-division-2-t-shirt-logo-png-favpng-qavsfsrNJEiZeKQacD7BJSMZF.jpg",
  })

game12 = Game.new({
  "name" => "The Elder Scrolls Online: Scalebreaker",
  "genre" => "Roleplaying",
  "buy_price" => "20.00",
  "sell_price" => "32.00",
  "stock" => "60",
  "publisher_id" => publisher6.id,
  "logo" => "https://esosslfiles-a.akamaihd.net/cms/2019/07/5a28152209f3f8fea3055ad658e30b02.png",
  })

game13 = Game.new({
  "name" => "Days Gone",
  "genre" => "Adventure",
  "buy_price" => "19.00",
  "sell_price" => "28.00",
  "stock" => "3",
  "publisher_id" => publisher1.id,
  "logo" => "https://media.playstation.com/is/image/SCEA/days-gone-logo-black-01-ps4-us-30jan19?$native_t$",
  })

game14 = Game.new({
  "name" => "Crash Team Racing: Nitro-Fueled",
  "genre" => "Action",
  "buy_price" => "18.00",
  "sell_price" => "25.00",
  "stock" => "0",
  "publisher_id" => publisher2.id,
  "logo" => "https://crashynews.files.wordpress.com/2019/07/res_2a99c8c72954e43479d57eddfbb7a4e1_full.png?w=580&h=606",
  })

game15 = Game.new({
  "name" => "The Legend of Zelda: Links Awakening",
  "genre" => "Adventure",
  "buy_price" => "25.00",
  "sell_price" => "38.00",
  "stock" => "26",
  "publisher_id" => publisher3.id,
  "logo" => "https://pixelz.cc/wp-content/uploads/2019/02/zelda-links-awakening-switch-logo-uhd-4k-wallpaper.jpg",
  })

game16 = Game.new({
  "name" => "Devil May Cry 5",
  "genre" => "Action",
  "buy_price" => "20.00",
  "sell_price" => "36.00",
  "stock" => "30",
  "publisher_id" => publisher4.id,
  "logo" => "https://lh3.googleusercontent.com/proxy/-GzuihYhUI9PjSpQVntHjSr5prrg0f_6V2y-SVx0CuPco10qf_pDChaAvw5YpjVNs0Wr0ngHUvOxIHdYIMawKnkFk7aJHyF0egWH",
  })

game17 = Game.new({
  "name" => "Trials Rising",
  "genre" => "Puzzle",
  "buy_price" => "10.00",
  "sell_price" => "18.00",
  "stock" => "10",
  "publisher_id" => publisher5.id,
  "logo" => "https://vignette.wikia.nocookie.net/trials/images/f/f1/Trials_Rising_logo_MainWithPrimaryBG.png/revision/latest?cb=20180622214237",
  })

game18 = Game.new({
  "name" => "DOOM",
  "genre" => "Action",
  "buy_price" => "20.00",
  "sell_price" => "32.00",
  "stock" => "666",
  "publisher_id" => publisher6.id,
  "logo" => "https://fontmeme.com/images/Doom-Logo.jpg",
  })

game1.save
game2.save
game3.save
game4.save
game5.save
game6.save
game7.save
game8.save
game9.save
game10.save
game11.save
game12.save
game13.save
game14.save
game15.save
game16.save
game17.save
game18.save


sale1 = Sale.new({
  "transaction_date" => "2019/12/20",
  "game_id" => game1.id,
  "amount" => "20"
  })

sale2 = Sale.new({
  "transaction_date" => "2019/12/23",
  "game_id" => game5.id,
  "amount" => "13"
  })

sale3 = Sale.new({
  "transaction_date" => "2019/12/28",
  "game_id" => game7.id,
  "amount" => "9"
  })

sale4 = Sale.new({
  "transaction_date" => "2020/01/03",
  "game_id" => game10.id,
  "amount" => "18"
  })

sale5 = Sale.new({
  "transaction_date" => "2020/01/03",
  "game_id" => game13.id,
  "amount" => "4"
  })

sale6 = Sale.new({
  "transaction_date" => "2020/01/07",
  "game_id" => game16.id,
  "amount" => "6"
  })

sale7 = Sale.new({
  "transaction_date" => "2020/01/07",
  "game_id" => game2.id,
  "amount" => "10"
  })

sale8 = Sale.new({
  "transaction_date" => "2020/01/07",
  "game_id" => game10.id,
  "amount" => "2"
  })

sale9 = Sale.new({
  "transaction_date" => "2020/01/14",
  "game_id" => game3.id,
  "amount" => "14"
  })

sale1.save
sale2.save
sale3.save
sale4.save
sale5.save
sale6.save
sale7.save
sale8.save
sale9.save

binding.pry
nil
