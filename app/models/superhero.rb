class Hero
  attr_reader :name, :power, :bio

  @@heroes = []

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes = []
  end
end
