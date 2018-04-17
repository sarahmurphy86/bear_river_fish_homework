class River

  attr_reader :name

  def initialize(name)
    @name = name
    @total_fish = []
  end

  def fish_count
    @total_fish.count()
  end
end
