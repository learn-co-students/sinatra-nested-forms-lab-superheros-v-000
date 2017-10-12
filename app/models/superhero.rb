class Superhero
  attr_accessor :name, :power, :bio
  SUPERHEROES = []

  def initialize(hash)
    self.name = hash[:name]
    self.power = hash[:power]
    self.bio = hash[:bio]
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end
end
