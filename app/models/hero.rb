class Hero
  attr_accessor :name, :power, :bio
  HEROES = []
  
  def initialize(name, power, bio)
    @name = name
    @power = power
    @bio = bio
    HEROES << self
  end
  
  def self.all
    HEROES
  end
end