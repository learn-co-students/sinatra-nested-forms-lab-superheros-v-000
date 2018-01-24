class SuperHero
  attr_accessor :name, :power, :bio

  @@superheroes = []

  def self.all
    @@superheroes
  end

  def initialize(details)
    self.name = details[:name]
    self.power = details[:power]
    self.bio = details[:bio]
    @@superheroes << self
  end

end