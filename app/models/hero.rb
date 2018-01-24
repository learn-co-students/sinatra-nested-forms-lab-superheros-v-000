class Hero
  attr_accessor :name, :power, :biography

  HEROES = []

  def initialize(atrs)
    @name = atrs[:name]
    @power = atrs[:power]
    @biography = atrs[:biography]
    HEROES << self
  end

end
