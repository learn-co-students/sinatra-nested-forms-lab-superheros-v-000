class SuperHero
  attr_accessor :name, :power, :bio

  HEROES = []

  def self.all
    HEROES
  end

  def initialize(name, power, bio)
    @name = name
    @power = power
    @bio = bio
    HEROES << self
  end
end
