class Hero
  attr_reader :name, :power, :bio

  HEROES = []

  def initialize(hero_data)
    @name = hero_data[:name]
    @power = hero_data[:power]
    @bio = hero_data[:bio]

    HEROES << self
  end

  def self.all
    HEROES
  end

  def self.clear
    HEROES.clear
  end

end
