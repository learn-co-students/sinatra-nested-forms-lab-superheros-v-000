class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    save
  end

  def self.all
    @@heroes
  end

  def save
    @@heroes << self
  end

  def self.clear
    @@heroes = []
  end

end
