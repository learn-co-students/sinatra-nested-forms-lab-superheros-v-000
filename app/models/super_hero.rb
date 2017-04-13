class SuperHero
  attr_reader :name, :power, :biography

  def initialize(details)
    @name=details[:name]
    @power=details[:power]
    @biography=details[:biography]
    SUPERHEROES << self
  end

  SUPERHEROES = []

  def self.all
    SUPERHEROES
  end

end
