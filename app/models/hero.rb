class Hero
  attr_reader :name, :power, :bio
  @@all_heroes = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]

    @@all_heroes << self
  end

  def self.all
    @@all_heroes
  end
end
