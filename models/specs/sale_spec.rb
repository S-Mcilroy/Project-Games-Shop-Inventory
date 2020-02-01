require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../sale.rb")

class TestSale < MiniTest::Test

  def setup
    options = {"id" => "30", "game_id" => "5", "transaction_date" => "31/01/2020"}
    @Sale1 = Sale.new(options)
  end

  def test_get_id
    assert_equal(30, @Sale1.id)
  end

  def test_get_game_id
    assert_equal(5, @Sale1.game_id)
  end

  def test_get_transaction_date
    assert_equal("31/01/2020", @Sale1.transaction_date)
  end

end
