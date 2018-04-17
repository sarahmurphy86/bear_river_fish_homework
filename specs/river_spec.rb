require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Simon")
    @fish2 = Fish.new("Iain")

  end

  def test_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_empty
    assert_equal(0,@river.fish_count)
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end


  def loose_fish_from_river()
      @river.add_fish(@fish1)
      @river.add_fish(@fish2)
      @river.loose_fish(@fish1)
      assert_equal(1, @river.fish_count())
    end
  


end
