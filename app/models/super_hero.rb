class Superhero

  attr_accessor :name, :power, :bio
  @@superheroes = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end
