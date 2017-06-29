class Team
  attr_accessor :name, :motto, :heroes
  @@all = []
  def initialize(name, motto)
    @name = name
    @motto = motto
    @heroes = []
    @@all << self
  end
  def add_hero(name, power, biography)
    hero = Hero.new(name,power,biography)
    @heroes << hero
  end
  def self.all
    @@all
  end
end
