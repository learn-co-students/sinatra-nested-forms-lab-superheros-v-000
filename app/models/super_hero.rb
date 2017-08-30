class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []
  def initialize(hero_hash)
    @name = hero_hash[:name]
    @power = hero_hash[:power]
    @bio = hero_hash[:bio]
    self.class.heroes << self
  end

  def self.heroes
    @@heroes 
  end

end
