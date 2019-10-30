class Superhero

  attr_accessor :name, :power, :bio

  SUPERHEROES = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end

end
