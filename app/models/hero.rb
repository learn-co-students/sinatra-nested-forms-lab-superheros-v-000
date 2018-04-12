class Hero
  attr_accessor :name, :power, :biography

  HEROES = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
    HEROES << self
  end

  def self.all
    HEROES
  end
end
