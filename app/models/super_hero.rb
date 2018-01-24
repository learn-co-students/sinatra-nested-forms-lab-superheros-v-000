
class SuperHero

  attr_accessor :name, :power, :bio

  @@heroes = []

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:biography]
    @@heroes << self
  end

  def self.all
    @@heroes
  end
end
