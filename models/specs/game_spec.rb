require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../game.rb")

class TestGame < MiniTest::Test

  def setup
    options = {"id" => "1", "name" => "Bloodborne", "genre" => "Action", "buy_price" => "10.50", "sell_price" => "20.00",
      "stock" => "10", "publisher_id" => "3"}

    @game1 = Game.new(options)
  end

  def test_get_id
    assert_equal(1, @game1.id)
  end

  def test_get_name
    assert_equal("Bloodborne", @game1.name)
  end

  def test_get_genre
    assert_equal("Action", @game1.genre)
  end

  def test_get_buy_price
    assert_equal(10.50, @game1.buy_price)
  end

  def test_get_sell_price
    assert_equal(20.00, @game1.sell_price)
  end

  def test_get_stock_amount
    assert_equal(10, @game1.stock)
  end

  def test_get_publisher_id
    assert_equal(3, @game1.publisher_id)
  end

end
