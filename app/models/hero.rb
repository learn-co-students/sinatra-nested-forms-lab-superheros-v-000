class Hero
  attr_accessor :name, :power, :bio
  @@all = []
  
  def initialize(hero_traits)
    @name = hero_traits[:name]
    @power = hero_traits[:power]
    @bio = hero_traits[:bio]

    @@all << self
  end
  
  def self.all 
    @@all
  end
end