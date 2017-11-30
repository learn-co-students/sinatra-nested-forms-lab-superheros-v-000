class Hero
  attr_accessor :name, :power, :bio, :team

  @@all = []

  def initialize(hero_data)
    @name = hero_data[:name]
    @power = hero_data[:power]
    @bio = hero_data[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
