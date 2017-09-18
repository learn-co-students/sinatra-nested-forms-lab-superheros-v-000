class SuperHero

  @@superheroes = []
  attr_accessor :name, :power, :bio

  def initialize(input)
    @name = input[:name]
    @power = input[:power]
    @bio = input[:bio]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

  def self.clear
    @@superheroes = []
  end

end
