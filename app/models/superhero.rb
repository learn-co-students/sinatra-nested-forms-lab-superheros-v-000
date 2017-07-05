class Superhero
  attr_accessor :name, :power, :biography

  SUPERHEROES = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end

  def self.clear
    self.all.clear
  end
end
