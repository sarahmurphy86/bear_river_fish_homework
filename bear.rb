class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach_state = []
  end

  def stomach_count
    @stomach_state.count()
  end

  def add_to_stomach(fish)
    @stomach_state.push(fish)
  end


end
