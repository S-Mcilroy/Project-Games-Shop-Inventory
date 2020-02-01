require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../publisher.rb")

class TestPublisher < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Sony", "trading" => "Yes"}
    @publisher1 = Publisher.new(options)
  end

  def test_get_name
    assert_equal("Sony", @publisher1.name)
  end

  def test_get_trading
    assert_equal("Yes", @publisher1.trading)
  end

  def test_get_id
    assert_equal(1, @publisher1.id)
  end

end
