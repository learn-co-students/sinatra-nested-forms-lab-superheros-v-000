class Team
  attr_accessor :name, :motto
  @@all = []

  def initialize (name:, motto:)
    @name = name
    @motto = motto
    @heroes = []

    @@all << self
  end

  def heroes
    @heroes
  end

  def add_hero(hero)
    @heroes << hero
  end

  def self.all
    @@all
  end

end