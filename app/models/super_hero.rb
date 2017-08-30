class SuperHero

  attr_accessor :name, :power, :bio
  SUPERHEROES = []

  def initialize(data)
    @name = data[:name]
    @power = data[:power]
    @bio = data[:bio]
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end
end
