class River

  attr_reader :name

  def initialize(name)
    @name = name
    @total_fish = []
  end

  def fish_count
    @total_fish.count()
  end

  def add_fish(fish)
    @total_fish << fish
  end

  def loose_fish(fish)
    index = @total_fish.index(fish)
        @total_fish.slice!(index, 1)
  end

# got stuck with this one too
  def loose_fish_when_bear_takes_it(fish)

  end

end
