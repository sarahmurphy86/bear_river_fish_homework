require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("Simon")
  end

  def test_name
    assert_equal("Yogi", @bear.name)
  end

  def test_empty_bear_stomach
    assert_equal(0,@bear.stomach_count)
  end

  def test_add_fish_to_stomach()
    @bear.add_to_stomach(@fish1)
    assert_equal(1, @bear.stomach_count())
  end




end
