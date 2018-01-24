class Superhero
  attr_accessor :name, :power, :bio
  @@superheroes = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end
