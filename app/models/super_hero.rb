class SuperHero
  attr_accessor :name, :power, :bio
  Superheroes = []
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    Superheroes << self
  end
  def self.all
    Superheroes
  end
end
